//https://youtu.be/LW5agi7vMFU

import ddf.minim.*;

Minim minim;

AudioPlayer musica;

Pantallas pantallas;

void setup() {
  minim = new Minim(this);
  musica = minim.loadFile("8-bit-bounce.wav");
  size(800, 800);
  pantallas = new Pantallas ();
}

void draw() {
  background(0);
  pantallas.dibujar();
}

void mouseReleased() {
  pantallas.presionar();
}
