class Juego {
  Jugador jugador;
  Jugador2 jugador2;
  Pelota pelota;
  Boton boton1;
  String estado;
  PImage inicio;

  Juego() {
    estado="inicio";
    boton1=new Boton  ("JUGAR", 400, 500, 300, 70);
    pelota = new Pelota ( width/2-50, height/2, 50, 50 );
    jugador = new Jugador (50, height/2, 30, 250);
    jugador2 = new Jugador2 (width-50, height/2, 30, 250);
    inicio=loadImage("inicio.jpg");
    imageMode(CENTER);
    textAlign(CENTER, CENTER);
  }
  void dibujar() {
    if (estado=="inicio" ) {
      image(inicio, width/2, height/2, 800, 800);
      boton1.dibujar();
    }
    if (estado=="jugando" ) {
      pelota.dibujar();
      pelota.mover();
      pelota.rebote();
      jugador.dibujar();
      jugador.mover();
      jugador2.dibujar();
      jugador2.mover();
    }
  }
    void presionar () {
    if (estado=="inicio" && mouseX > 200 && mouseX < 200+350 && mouseY > 500 && mouseY < 500+40 ) { //400, 500, 300, 70
      boton1.mouseEncima(); 
      estado="jugando";
    } 
  }
}
