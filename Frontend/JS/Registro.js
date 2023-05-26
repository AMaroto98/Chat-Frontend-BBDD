function recibirPaises() {

    var http = new XMLHttpRequest();

    http.open("GET", "http://localhost:3000/Chat/Register", true);
    http.send();

    http.onreadystatechange = function() {

        if (this.readyState == 4 && this.status == 200) {

          let jsonString = http.responseText;
          let countryList = JSON.parse(jsonString);
          let selectElement = document.getElementById("listaPaises");
      
          for (let i in countryList) {
            let country = countryList[i];
            let option = document.createElement("option");
            option.text = country.name;
            option.value = country.code;
            selectElement.add(option);
          }
        }
    }
}

function resetearCampos() {
    document.getElementById("user").value = "";
    document.getElementById("mail").value = "";
    document.getElementById("pass").value = "";
    document.getElementById("passRepetido").value = "";
    document.getElementById("listaPaises").selectedIndex = -1;
    document.getElementById("condiciones").checked = false;
}

function enviar() {

    var http = new XMLHttpRequest();

    let user = document.getElementById("user").value;
    let mail = document.getElementById("mail").value;
    let pass = document.getElementById("pass").value;
    let passRepetido = document.getElementById("passRepetido").value;
    let codeCountry = document.getElementById("listaPaises").value;


    http.open("POST", "http://localhost:3000/Chat/Register", true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.send("user=" + user + "&mail=" + mail + "&pass=" + pass + "&codeCountry=" + codeCountry);

    http.onreadystatechange = function(){

        if (this.readyState == 4 && this.status == 200) {
            // Aquí se guarda la respuesta que hacemos con el getWritter de Java
            // this hace referencia al objeto http que esta arriba, se podría poner en su lugar
            if (this.responseText =="ok") {
                document.getElementById("resultat").innerHTML = "Estás loggeado";
            }
        }
    }
}