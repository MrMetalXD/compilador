inicio {

    // Declaración de variables
    variable entero velocidad;
    variable decimal distancia;
    variable texto mensaje;
    variable entero intentos;

    //Asignaciones iniciales
    velocidad = 5;
    distancia = 10.5;
    mensaje = "Iniciando rutina";
    intentos = 3;

    // Mostrar mensaje
    mostrar;

    // Condicional con sensor
    si sensor_frontal == activado entonces {
        detener;
        girar;
        mensaje = "Obstáculo detectado";
        mostrar;
    } sino {
        avanzar;
        mensaje = "Ruta despejada";
        mostrar;
    }

    // Ciclo repetir
    repetir 3 {
        bocina;
        avanzar;
        esperar;
    }

    // Ciclo mientras
    mientras sensor_izquierdo == activado {
        girar;
        avanzar;
    }

    // Más acciones
    encender;
    esperar;
    retroceder;
    apagar;

    // Otro condicional anidado
    si sensor_derecho == activado entonces {
        detener;
        mensaje = "Obstáculo a la derecha";
        mostrar;
    } sino {
        avanzar;
        bocina;
    }

    // Asignación compleja
    velocidad = velocidad + 2;
    distancia = distancia - 3.0;
    intentos = intentos - 1;
    mostrar;
    leer;
}fin