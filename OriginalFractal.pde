int s = 200;
public void setup()
{
  size(600,600);
}

public void draw()
{
  frameRate(1000); 
  myFractal(300,300,s);
}

public void mousePressed()
{
  myFractal(width/2,height/2,s);
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
}

public void myFractal(float x, float y, float siz)
{
  if(siz<10)
  {
    fill(0);
    stroke((int)(Math.random()*256));
    strokeWeight(2);
    ellipse(x,y,siz+100,siz+100);
  }
  else
  {
    myFractal((x-siz/2)+10,y-siz/2,siz/2.5);
    myFractal((x+siz/2)+10,y-siz/2,siz/2.5);
    myFractal(x-siz/2,y+siz/2,siz/2.5);
    myFractal(x+siz/2,y+siz/2,siz/2.5);
  }
}