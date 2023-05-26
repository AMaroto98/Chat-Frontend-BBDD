function enviar() {

    // Se crea mensaje HTTP. Indica como se envia la información de un lugar a otro.
    // Es la plantilla para mandar mensajes HTTP, ahora hay que rellenarlo con la información que queramos.
    var http = new XMLHttpRequest();

    let mail = document.getElementById("mail").value;
    let pass = document.getElementById("pass").value;

    // Todas las clases que se llaman desde JS son Servlet
    // Ordenador: Puerto: Proyecto: Login (Archivo)
    http.open("POST", "http://localhost:3000/Tomcat/Login", true);

    // Dependiendo de si es POST o GET se envia de una forma u otra:
    // Con POST:
    // Variable = valor & variable = valor
    // No poner espacios porque si no no funciona
    // Se especifica que se envia, se podría especificar que se envia, en este caso son valores.
    // Si lo que quieres enviar es un texto se pone lo del Header. Hay una tabla donde se puede mirar, en función de lo que se manda se pone una cosa u otra.
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); //Header
    http.send("mail="+mail+"&pass="+pass);
}