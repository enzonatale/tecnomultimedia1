//https://youtu.be/6aI7M2pL-eo

int i=0;

void setup(){
  size (600,600);
  ellipseMode(CORNER);
  noStroke();

}
void draw(){
  translate(width/2, height/2);
  background(random(0,255),random(0,255),random(0,255));
  fill(0);
  textSize(30);
  text("Oprima una tecla para resetear",-220,290);   
  for (i=0; i <100; i++){
  rotate(map(mouseX,0,width,PI/2,PI/80));
  translate(0,map(mouseY,0,height,0,0));
  if(i%2 == 0) fill(255);
  else fill(random(0,255),random(0,255),random(0,255));
  float radio = (width/3) - i*1.0;
  ellipse(0,0,radio,radio);

  }
  if (keyPressed){
  i=0;
  mouseX=0;
  mouseY=0;
  
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
