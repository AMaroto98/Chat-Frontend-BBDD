function añadirAmigo() {

    var http = new XMLHttpRequest();

    let mail = sessionStorage.getItem("mail");
    let codigoSesion = sessionStorage.getItem("session");
    let friend = document.getElementById("friend").value;

    http.open("POST", "http://localhost:3000/Chat/Friend", true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.send("mail=" + mail + "&session=" + codigoSesion + "&friend=" + friend);

    http.onreadystatechange = function(){

        let respuesta = http.responseText;

        if (http.readyState == 4 && http.status == 200) {

            if (respuesta == "0") {

                document.getElementById("resultado").innerHTML = "El servidor no responde";
                document.getElementById("resultado").style.color = "red";

            } else if (respuesta == "1") {

                document.getElementById("resultado").innerHTML = "Amigo añadido con éxito";
                document.getElementById("resultado").style.color = "green";

            } else if(respuesta == "2") {

                document.getElementById("resultado").innerHTML = "Amigo no encotrado";
                document.getElementById("resultado").style.color = "red";

            } else {

                document.getElementById("resultado").innerHTML = "Usuario necesita Login";
                document.getElementById("resultado").style.color = "red";
            }
        }
    }
}


function recibirAmigos() {

    var http = new XMLHttpRequest();

    let mail = sessionStorage.getItem("mail");
    let codigoSesion = sessionStorage.getItem("session");

    http.open("GET", "http://localhost:3000/Chat/Friend?mail="+mail+"&session="+codigoSesion, true);
    http.send();

    http.onreadystatechange = function(){

        if (http.readyState == 4 && http.status == 200) {

            let jsonString = http.responseText;
            let arrayAmigos = JSON.parse(jsonString);
            let selectElement = document.getElementById("listaAmigos");

            for (let i in arrayAmigos) {

                let amigo = arrayAmigos[i];
                let option = document.createElement("option");
                option.text = amigo;
                selectElement.add(option);

            }
        }
    }
}