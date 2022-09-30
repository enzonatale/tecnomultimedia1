//programa principal o madre

class Principal {
  PImage img;
  int bx=width/2-50, by=450;
  int px=width/2, py=50;
  int x, y;
  Barra barra; 
  Fondo fondo;
  Pelota pelota;
  Principal () {
    img = loadImage ("img.jpg");
  }  

  void dibujar () {
    pelota = new Pelota (x, y);
    barra = new Barra (bx, by);
    fondo = new Fondo (img, x, y);
    fondo.dibujar();
    pelota.dibujar();
    barra.dibujar();
    barra.mover();
    pelota.mover();
  
  }
  
}
