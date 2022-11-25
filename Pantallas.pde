class Pantallas {
  Jugador jugador;
  Jugador2 jugador2;
  Pelota pelota;
  Boton boton1, boton2, boton3, boton4;
  Puntos puntos, puntos2;
  String estado;
  PImage inicio;
  PImage mesa;
  PImage fondo;
  int punto, punto2;

  Pantallas() {
    estado="inicio";
    boton1=new Boton  ("JUGAR", 400, 500, 300, 70);
    boton2=new Boton  ("VOLVER AL INICIO", 400, 600, 300, 70);
    boton3=new Boton  ("CREDITOS", 400, 600, 300, 70);
    boton4=new Boton  ("INSTRUCCIONES", 400, 700, 300, 70);
    pelota = new Pelota ( width/2-50, height/2, 50, 50 );
    jugador = new Jugador (50, height/2, 5, 250);
    jugador2 = new Jugador2 (width-50, height/2, 5, 250);
    inicio=loadImage("inicio.jpg");
    mesa=loadImage("mesa.jpg");
    fondo=loadImage("fondo.jpg");
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
  }


  void dibujar() {
    if (estado=="inicio" ) {
      image(inicio, width/2, height/2, 800, 800);
      boton1.dibujar();
      boton3.dibujar();
      boton4.dibujar();
    }
    if (estado=="jugando" ) {
      image(mesa, width/2, height/2, 800, 800);
      jugador.dibujar();
      jugador.mover();
      jugador2.dibujar();
      jugador2.mover();

      pelota.dibujar();
      pelota.mover();
      pelota.reboteArriba();
      pelota.reboteAbajo();

      puntos = new Puntos(punto, 50, 100);
      puntos2 = new Puntos(punto2, 750, 100);

      puntos.dibujar();
      puntos2.dibujar();

      if (pelota.sumarPuntos()) {
        punto +=1;
      }
      if (pelota.sumarPuntos2()) {
        punto2 +=1;
      }

      if (pelota.colision(jugador2.x, jugador2.y, jugador2.tam, jugador2.tam2)) {

        musica.play();
        musica.rewind();
        pelota.rebote();
      }
      if (pelota.colision(jugador.x, jugador.y, jugador.tam, jugador.tam2)) {         

        musica.play();
        musica.rewind();
        pelota.rebote2();
      }

      if (punto == 3 ) { 
        estado = "ganador1";
      }

      if (punto2 == 3 ) { 
        estado = "ganador2";
      }
    }
    if (estado == "ganador1") {
      image(mesa, width/2, height/2, 800, 800);
      textSize(80);
      boton2.dibujar();
      text("Ganador Jugador 1", width/2, height/2 );
      punto = 0;
      punto2 = 0;
    }

    if (estado == "ganador2") {
      image(mesa, width/2, height/2, 800, 800);
      textSize(80);
      boton2.dibujar();
      text("Ganador Jugador 2", width/2, height/2 );
      punto2 = 0;
      punto = 0;
    }
    if (estado == "creditos") {
      fill(0);
      textSize(60);
      image(fondo, width/2, height/2, 800, 800);
      boton2.dibujar();
      text("Tp5 Tecno Multimedia 1 \n Programador : Enzo Natale \n Profesor: Leonardo Garay \n Comisión 4", width/2, 300 );
    }
    if (estado == "instrucciones") {
      fill(0);
      textSize(60);     
      image(fondo, width/2, height/2, 800, 800);
      boton2.dibujar();
      text("Mover personaje 1: \n Flechas Arriba y Abajo \n Mover personaje 2: \n Teclas W y S  ", width/2, 300 );
    }
  }

  void jugador1() {
    estado = "ganador1";
  }

  void jugador2() {
    estado="ganador2";
  }

  void presionar () {
    if (estado=="inicio" && mouseX > 200 && mouseX < 200+350 && mouseY > 500 && mouseY < 500+40 ) { //400, 500, 300, 70
      boton1.mouseEncima();
      estado="jugando";
    } else if (estado=="ganador1" && mouseX > 200 && mouseX < 200+350 && mouseY > 600 && mouseY < 600+40 ) {
      boton2.mouseEncima();
      estado="inicio";
    } else if (estado=="ganador2" && mouseX > 200 && mouseX < 200+350 && mouseY > 600 && mouseY < 600+40 ) {
      boton2.mouseEncima();
      estado="inicio";
    } else if (estado=="creditos" && mouseX > 200 && mouseX < 200+350 && mouseY > 600 && mouseY < 600+40 ) {
      boton3.mouseEncima();
      estado="inicio";
    } else if (estado=="inicio" && mouseX > 200 && mouseX < 200+350 && mouseY > 600 && mouseY < 600+40 ) {
      boton3.mouseEncima();
      estado="creditos";
    } else if (estado=="inicio" && mouseX > 200 && mouseX < 200+350 && mouseY > 700 && mouseY < 700+40 ) {
      boton3.mouseEncima();
      estado="instrucciones";
    } else if (estado=="instrucciones" && mouseX > 200 && mouseX < 200+350 && mouseY > 600 && mouseY < 600+40 ) {
      boton3.mouseEncima();
      estado="inicio";
    }
  }
}
