boolean ismoving;
Snowflake [] snow;
int opp;
void setup()
{
  //your code here
  size(400,400);
  background(0);
  noStroke();
  snow = new Snowflake[100];
  for (int i=0; i<snow.length; i++)
  {
    snow[i]=new Snowflake();
  }
}
void draw()
{
  //your code here
  for(int i=0; i<snow.length; i++)
  {
    snow[i].erase();
    snow[i].lookDown();    
    snow[i].move();
    snow[i].wrap();
    snow[i].show();
  }
}
void mouseDragged()
{
  //your code here
  fill(241,141,132);
  ellipse(mouseX, mouseY, 10, 10);
}

class Snowflake
{
  //class member variable declarations
  int myX, myY;
  boolean ismoving;
  Snowflake()
  {
    //class member variable initializations
    myX=((int)((Math.random()*400)+1));
    myY=((int)((Math.random()*400)+1));
    boolean ismoving=true;
  }
  void show()
  {
    //your code here
    //int opp=1000;
    //fill(255,255,255, opp);
    noStroke();
    fill(255);
    ellipse(myX,myY,5,5);
  }
  void lookDown()
  {
    //your code here
    if(get(myX,myY+4)!=color(241,141,132) && myY<=396 && myY>=0)
    {
      ismoving=true;
    }
    else 
      ismoving=false;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(myX,myY,7,7);
  }
  void move()
  {
    //your code here
    if(ismoving==true)
    {
      myY++;
    }
    if(ismoving==false)
    {
      
    }
  }
  void wrap()
  {
    //your code here
    if (myY==396)
    {
      myY=0;
      myX=((int)((Math.random()*400)+1));
    }
  }
}


