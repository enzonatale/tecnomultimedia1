boolean activoEllipse = false;
int ellipsePosX = 0;
int pantalla = 1;
float cuenta, tono;
ArrayList<codigo> matrix=new ArrayList();
PImage imagenmatrix;
PFont font;

void setup()
{
  size(600,600);
  textSize(50);
  font = createFont("matrix code nfi.ttf",50);
  textFont(font);
  textAlign(CENTER);
  tono = 1;
  cuenta = 1;
  for(int i=0;i<150;i++)
  
  {
    matrix.add(i,new codigo());
  }

  
  
}
void draw()
{
  fill(6,15,7,5);
  rect(0,0,width,height);
  for(codigo m:matrix)
  {
    m.actualizar();
    m.show();
  }
textSize(20);
 
   if (pantalla == 1) {
    fill(0, 255, 0);
    text("Matrix " + pantalla, 50, 590);
  fill(0,255,0);
    ellipse(25, 25, 50, 50);
    
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
} else if (pantalla == 2) {
    fill(0, 255, 0);
    text("Matrix " + pantalla, 300, 590);
    fill(0,255,0);
    ellipse(25, 25, 50, 50);
    
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    }
  } else if (pantalla == 3) {
    fill(0, 255, 0);
    text("Matrix " + pantalla, 550, 590);
    fill(0,255,0);
    ellipse(25, 25, 50, 50);
    
    if (dist(mouseX, mouseY, 100, 100) < 25) {
      cursor(HAND);
    }else{
      cursor(ARROW);
    } 
}
textSize(90);
  if (tono>255||tono<1) {
    cuenta *= -1;
  }
  tono += cuenta;
  fill(255);
  if (frameCount<=500) {
    text("THE MATRIX", width/2, height/2);
  } else if (frameCount>500 && frameCount<= 1000) {
    textSize(60);
    text("neo\nKEANU REEVES", width/2, height/2);
  }  else if (frameCount>1000 && frameCount<= 1500) {
    textSize(60);
    text("morfeo\nLAURANCE FISHBURNE", width/2, height/2);
  }else if (frameCount>1500 && frameCount<= 2000) {
    textSize(60);
    text("trinity\nCARRIE-ANNE MOSS", width/2, height/2);
  }else if (frameCount>2000 && frameCount<= 2500) {
    textSize(60);
    text("agente smith\nHUGO WEAVING", width/2, height/2);
  }else if (frameCount>2500 && frameCount<= 3000) {
    textSize(60);
    text("niobe\nJADA SMITH", width/2, height/2);
  }else if (frameCount>3000 && frameCount<= 3500) {
    textSize(90);
    text("DIRECCION", width/2, height/2);
  }else if (frameCount>3500 && frameCount<= 4000) {
    textSize(60);
    text("Hermanas Wachowski", width/2, height/2);
  }else if (frameCount>4000 && frameCount<= 4500) {
    textSize(90);
    text("PRODUCCION", width/2, height/2);
  }else if (frameCount>4500 && frameCount<= 5000) {
    textSize(60);
    text("Joel Silver", width/2, height/2);
  }else if (frameCount>5000 && frameCount<= 5500) {
    textSize(90);
    text("GUION", width/2, height/2);
  }else if (frameCount>5500 && frameCount<= 6000) {
    textSize(60);
    text("Lilly Wachowski\nLana Wachowski", width/2, height/2);
  }else if (frameCount>6000 && frameCount<= 6500) {
    textSize(90);
    text("MUSICA", width/2, height/2);
  } else if (frameCount>6500 && frameCount<7000) {
    textSize(60);
    text("  Don Davis", width/2, height/2);
  }else if (frameCount>6500 && frameCount<7000) {
    textSize(90);
    text("FOTOGRAFIA", width/2, height/2);
  }else if (frameCount>6500 && frameCount<7000) {
    textSize(60);
    text("Bill Pope", width/2, height/2);
  }else if (frameCount>6500 && frameCount<7000) {
    textSize(90);
    text("MONTAJE", width/2, height/2);
  }else if (frameCount>6500 && frameCount<7000) {
    textSize(60);
    text("Zach Staenberg", width/2, height/2);
  }
   
  println(frameCount);
}
void mouseClicked() {
  if (pantalla == 1) {
  if (dist(mouseX, mouseY, 25, 25) < 25){  
    imagenmatrix = loadImage("frame_1.jpg");
    image(imagenmatrix,0,0);
    pantalla++; 
  }
  
} else if (pantalla == 2) {
    if (dist(mouseX, mouseY, 25, 25) < 25) {
      imagenmatrix = loadImage("frame_2.jpg");
      image(imagenmatrix,0,0);
      pantalla++;
   
  }
  } else if (pantalla == 3) {
  if (dist(mouseX, mouseY, 25, 25) < 25){
    imagenmatrix = loadImage("frame_3.jpg");
    image(imagenmatrix,0,0);
  pantalla = 1;}
}
}
