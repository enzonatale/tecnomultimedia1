class Pelota {

  float x, y, tam, tam2, speedX, speedY;
  int puntuacionj1, puntuacionj2 = 0;


  Pelota(float x, float y, float tam, float tam2 ) {

    this.x = x;
    this.y = y;
    this.tam = tam;
    this.tam2 = tam2;
    speedX = 5;
    speedY = 5;
  }


  void dibujar() {
    fill(255);
    ellipse(x, y, tam, tam2);
    textSize(130);
  }


  void mover() {
    x = x + speedX*2;
    y = y + speedY*2;
  }


  boolean sumarPuntos() {
    if ( x < -40) {

      x  =width/2-50;
      y = height/2;
      speedX = +random(0, 5);
      speedY = +random(0, 5);
      return true;
    } else {
      return false;
    }
  }

  boolean sumarPuntos2() {
    if (x>width-tam2+20) {

      x  =width/2-50;
      y = height/2;
      speedX = -random(5, 5);
      speedY = -random(5, 5);
      return true;
    } else {
      return false;
    }
  }

  boolean colision ( float x_, float y_, float tamX_, float tamY_) { 
    if ((x <= x_ + tamX_/2) && (x >= x_ - tamX_/2) &&( y <= y_ + tamY_) && (y >= y_ - tamY_) ) {

      return true;
    } else {
      return false;
    }
  }
  void rebote() {
    speedY = -random(5);
    speedX = -speedX;
  }
  void rebote2() {
    speedY = -random(5);
    speedX = -speedX;
  }
  void reboteArriba() {
    if (y < -20) {
      speedY = -speedY;
    }
  }
  void reboteAbajo() {
    if (y > 820 ) {
      speedY = -speedY;
    }
  }
}
