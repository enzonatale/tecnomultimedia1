class Pelota {

  float x_, y_, tam_, tam2_, speedX, speedY;

  Pelota(float x, float y, float tam, float tam2 ) {
    x_ = x;
    y_ = y;
    tam_ = tam;
    tam2_ = tam2;
    speedX = 4;
    speedY = 4;
  }

  void dibujar() {
    fill(255);
    ellipse(x_, y_, tam_, tam2_);
  }


  void mover() {
    x_ = x_ + speedX*2;
    y_ = y_ + speedY*2;
  }

  void rebote() {
    if ( x_ > width - tam_/2) {
      //speedX = -speedX;
      // scoreL = scoreL + 1;
    } else if ( x_ < 0 + tam_/2) {
      speedX = -speedX;
      // scoreR = scoreR + 1;
    } else if (x_>width-tam2_) {
      speedX = -speedX;
    }
    if ( y_ > height - tam2_/2) {
      speedY = -speedY;
    } else if ( y_ < 0 + tam2_/2) {
      speedY = -speedY;
    } else if (y_ > height-tam2_) {
      speedY = -speedY;
    }
  }
}
