//https://youtu.be/m4rW0BOVet0

PImage fondo;
PImage pajaro;
PImage obstaculo;
PImage portada;
PImage creditos;
PImage gameover;

float cuenta, tono;
int estado = 1; 
int pantalla =1;
int puntos = 0, puntosMaximos = 0; 
int PosX = -200, PosY, VelocidadY = 0; 
int DistanciaX[] = new int[2], DistanciaY[] = new int[2]; 

void setup() { 
  size(600, 700); 
  fill(0); 
  textSize(35);  
  fondo = loadImage("img1.jpg");
  pajaro = loadImage("img2.jpg");
  obstaculo = loadImage("img3.jpg");
  portada = loadImage ("img4.jpg");
  creditos = loadImage ("img5.jpg");
  gameover = loadImage ("img6.jpg");
  tono = 1;
  cuenta = 1;
}

void draw() {  
  if (estado == 0) { 
    imageMode(CORNER);
    image(fondo, PosX, 0);
    image(fondo, PosX+fondo.width, 0);
    PosX -= 6;
    VelocidadY += 1;
    PosY += VelocidadY; 
    if (PosX == -1800) PosX = 0; 
    for (int i = 0; i < 2; i++) { 
      imageMode(CENTER);
      image(obstaculo, DistanciaX[i], DistanciaY[i] - (obstaculo.height/2+100));
      image(obstaculo, DistanciaX[i], DistanciaY[i] + (obstaculo.height/2+100));
      if (DistanciaX[i] < 0) {   
        DistanciaY[i] = (int)random(200, height-200);
        DistanciaX[i] = width;
      }
      if (DistanciaX[i] == width/2) { 
        puntos++;
        puntosMaximos = max(puntos, puntosMaximos);
      }
      if (PosY>height||PosY<0||(abs(width/2-DistanciaX[i])<25 && abs(PosY-DistanciaY[i])>100)) { 
        estado=1;
      }
      DistanciaX[i] -= 6;
    }
    image(pajaro, width/2, PosY); 
    text(""+puntos, width/2-15, 100);
  } else { 
    if (pantalla == 1) { 
      imageMode(CENTER);
      image (portada, 300, 350);  
      botonA();
      fill (0);
      text("Oprima el boton azul para iniciar", 20, 670);
      text("Click izq salto / Click drch salto+", 10, 90);
    }
    if (pantalla == 2) { 
      image (creditos, 300, 350);
      botonA();
      creditos(width/3, 500);
    }

    if (pantalla == 3) { 
      image (gameover, 300, 350);    
      fill(0, 0, 255);
      ellipse(25, 25, 50, 50);
      fill (232, 252, 217);
      text("Máxima puntuación: "+puntosMaximos, 90, width-50);
      text("Boton rojo para volver al inicio", 25, 90);
      text("Boton azul para seguir jugando", 25, 130);
      botonR();
      frameCount = 0;
    }
  }
}
