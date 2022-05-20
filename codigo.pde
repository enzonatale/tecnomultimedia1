class codigo
{
  float posx=random(0,width),posy=10,textsize=random(7,25),tiempo=random(10,500);
  long contadorViejo=0;
  byte codigo=1;
  public void actualizar()
  {
    if(tic(int(tiempo)))
    {
       posy+=textAscent()*1.1;
       codigo=(byte)random(0,24);
       if(posy>height)
       {
         posy=0;
         posx=random(0,width);
         textsize=random(7,25);
         tiempo=random(0,550);
      
       }
    }
  }
  public void show()
  {
    fill(80,214,94,map(posy,0,height,255,0));
    textSize(textsize);
    text(codigo,posx,posy);
  }
  private boolean tic(int t)
  {
    if(millis()>contadorViejo+t)
    {
      contadorViejo=millis();
      return true;
    }
    else
    {
      return false;
    }
    
    
  }
}
