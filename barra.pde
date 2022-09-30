class Barra {
  int x, y;
  Barra (int x_, int y_ ) {
    x = x_;
    y = y_;
  }
  void dibujar () {
    rect (x, y ,100,20);
  }
  void mover() {
    if (keyPressed && keyCode == RIGHT) {
      principal.bx = principal.bx+2;
    }
    if (keyPressed && keyCode == LEFT) {
      principal.bx = principal.bx-2;
    }
  }
  
  
}
