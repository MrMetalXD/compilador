inicio {
    variable entero velocidad;
    variable texto mensaje;

    velocidad = 3;
    mensaje = "Iniciando secuencia";

    mostrar;
    leer;

    si sensor_frontal == activado entonces {
        detener;
        girar;
        mensaje = "Obstáculo detectado";
    } sino {
        avanzar;
    }

    repetir 5 {
        bocina;
        avanzar;
    }

    encender;
    esperar;
    retroceder;
    apagar;
}