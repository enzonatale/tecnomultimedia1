void botonA() {

  fill(0, 0, 255);
  ellipse(25, 25, 50, 50);
}
void botonR() {

  fill(255, 0, 0);
  ellipse(575, 25, 50, 50);
  frameCount = 0;
}






void mouseClicked() {
  if (pantalla == 1) {
    if (dist(mouseX, mouseY, 25, 25) < 25) {
      pantalla++;
      PosX = estado = puntos = 0;
    }
  } else if (pantalla == 2) {
    if (dist(mouseX, mouseY, 25, 25) < 25) {
      pantalla++;
    }
  }  
  if (pantalla == 3) {
    if (dist(mouseX, mouseY, 25, 25) < 25) { 
      PosX = estado = puntos = 0;
    }
  }  
  if (pantalla == 3) {
    if (dist(mouseX, mouseY, 575, 25) < 25) { 
      pantalla =1 ;
    }
  }
}
