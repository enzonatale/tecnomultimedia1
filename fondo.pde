class Fondo {
  PImage img;
  int x, y;
  Fondo (PImage img_, int x_, int y_) {
    x = x_;
    y = y_;
    img = img_;
  }
  void dibujar () {
  image(img,x,y);
  
  }
}
