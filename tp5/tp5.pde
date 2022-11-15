Pelota pelotita;
Jugador jugador;
Juego juego;
//declaro objeto
void setup() {

  size(800, 800);
  juego = new Juego ();
  //creo el objeto
}


void draw() {
  background(0);
  juego.dibujar();
}

void mouseReleased() {
  juego.presionar();

}
