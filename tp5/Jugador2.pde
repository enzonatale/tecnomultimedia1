class Jugador2 {
 float x_, y_, velX_, velY_, tam_, tam2_ ;
  Jugador2(float x, float y, float tam, float tam2) {
    x_ = x;
    y_ = y;
    tam_ = tam;
    tam2_ = tam2;
  }


  void dibujar() {
    push();
    fill(255);
    rectMode(CENTER);
    rect(x_, y_, tam_, tam2_);
    pop();
  }

  void mover() {

    if (keyPressed & key == 'w') {
      y_ = y_ - 5;
    }
    else if (keyPressed & key == 's') {
      y_ = y_ + 5;
    }
  }
}
