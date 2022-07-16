void mousePressed() { 
  VelocidadY = -17;
  if (estado==1) {
    if (mouseButton == LEFT)
      DistanciaX[0] = 600;
    DistanciaY[0] = PosY = height/2;
    DistanciaX[1] = 900;
    DistanciaY[1] = 500;
  }
  if (mouseButton == RIGHT)
    VelocidadY = -22;
}

void keyPressed() { 
  VelocidadY = -17;
  if (estado==1) { 
    DistanciaX[0] = 600;
    DistanciaY[0] = PosY = height/2;
    DistanciaX[1] = 900;
    DistanciaY[1] = 500;
  }
  if (keyCode == UP)
    VelocidadY = -22;
}
