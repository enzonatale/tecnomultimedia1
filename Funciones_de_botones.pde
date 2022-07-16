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
  }  if (pantalla == 3) {
    if (dist(mouseX, mouseY, 25, 25) < 25) { 
      PosX = estado = puntos = 0;
    
  }
  }  if (pantalla == 3) {
    if (dist(mouseX, mouseY, 575, 25) < 25) { 
      pantalla =1 ;
      
     
  }
}
}
