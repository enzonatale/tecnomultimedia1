void creditos(int posX, int posY) {

  if (tono>255||tono<1) {
    cuenta *= -1;
  }
  tono += cuenta;
  fill(0);
  if (frameCount<=200) {
    text("Año 2022", posX, posY);
  } else if (frameCount>200 && frameCount<= 400) {
    text("Natale Enzo ", posX, posY);
  } else if (frameCount>400 && frameCount<= 600) {
    text("Tecno Multimedia", posX, posY);
  } else if (frameCount>600 && frameCount<= 800) {
    text("TP3 FlappyBirds", posX, posY);
  }
  println(frameCount);
}
