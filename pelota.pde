class Pelota {
  float x, y;
  Pelota ( float x_, float y_) {
    x = x_;
    y = y_;
  }
  void dibujar () {
    push ();
    ellipse (principal.px,principal.py, 20, 20);
    pop ();
  }
void mover(){
  if(principal.py<height){
   principal.py = principal.py + 5;
  } 
  else if (principal.py>= height){
  principal.py = principal.py -500 ;


  }
  
}



}
