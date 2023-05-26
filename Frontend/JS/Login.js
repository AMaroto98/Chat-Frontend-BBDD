function enviar() {

    var http = new XMLHttpRequest();

    let mail = document.getElementById("mail").value;
    let pass = document.getElementById("pass").value;

    // True indica que es asincrono
    http.open("GET", "http://localhost:3000/Chat/Login?mail="+mail+"&pass="+pass, true);
    http.send();

    http.onreadystatechange = function(){

        if (this.readyState == 4 && this.status == 200) {

            let sesion = this.responseText;

            if (sesion.length == 9 ) {

                window.sessionStorage.setItem("mail", mail);
                window.sessionStorage.setItem("session", sesion);
                document.getElementById("resultat").innerHTML = "Login correcto";

                irChat();

            } else {

                document.getElementById("resultat").innerHTML = "Login incorrecto";
            }
        }
    }
}

function resetearCampos() {
    document.getElementById("mail").value = "";
    document.getElementById("pass").value = "";
}

function irChat() {

    // Obtengo el valor del sessionStorage
    let codigoSesion = sessionStorage.getItem("session");

    // Verifica si se ha guardado la información
    if (codigoSesion != 0) {

        // Redirigir a la página de Gestión
        window.location.href = "../Frontend/pages/Chat.html";

    }
}