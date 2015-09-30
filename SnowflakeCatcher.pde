boolean ismoving;
Snowflake [] snow;
void setup()
{
  //your code here
  size(400,400);
  snow = new Snowflake[100];
  for (int i=0; i<snow.length; i++)
  {
    snow[i]=new Snowflake(x,y);
  }
}
void draw()
{
  //your code here
  background(0);
  for(int i=0; i<snow.length; i++)
  {
    snow[i].move();
  }
}
void mouseDragged()
{
  //your code here
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
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if(get(x,y+1)!=color(0) || y>405)
    {
      ismoving=false;
    }
    else() 
    {
      ismoving=true;
    }
    }
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(ismoving==true)
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here
    if (y==405)
    {
      y=0;
      x=((int)((Math.random()*400)+1));
    }
  }
}


