

function mostrarDatos() {
    // Obtener el valor seleccionado en el campo "Raza"
    var raza = document.getElementById("raza").value;
    
    // Realizar una petición AJAX para obtener los datos del personaje
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // Parsear la respuesta del servidor a formato JSON
            var personaje = JSON.parse(this.responseText);
            
            // Mostrar los datos del personaje en la página
            document.getElementById("datos-personaje").innerHTML =
                "Raza: " + personaje.raza.nombre + "<br>" +
                "HA: " + personaje.ha + "<br>" +
                "HP: " + personaje.hp + "<br>" +
                "Fuerza: " + personaje.fuerza + "<br>" +
                "Resistencia: " + personaje.resistencia + "<br>" +
                "Destreza: " + personaje.destreza + "<br>" +
                "Agilidad: " + personaje.agilidad + "<br>" +
                "Inteligencia: " + personaje.inteligencia + "<br>" +
                "Voluntad: " + personaje.voluntad + "<br>" +
                "Carisma: " + personaje.carisma + "<br>" +
                "Iniciativa: " + personaje.iniciativa;
        }
    };
    xhttp.open("GET", "/generador/personaje?raza=" + raza, true);
    xhttp.send();
}