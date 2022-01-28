Rectangle rectangle;

void setup()
{
  size(800, 400);
}

void draw()
{
  rectangle = new Rectangle(100f,100f,600f,200f);
  rectangle.Draw();
  
  text(rectangle.Area,10,10);
}

class Rectangle
{
  float x;
  float y;
  float width;
  float height;
  public float Area;
  
  Rectangle(float xx,float yy,float w,float h)
  {
    x=xx;
    y=yy;
    width=w;
    height=h;
    Area = width * height;
  }
  
  public void Draw()
  {
    float a=x+width;
    float b=y+height;
    
    line(x,y,a,y);
    line(a,y,a,b);
    line(a,b,x,b);
    line(x,b,x,y);
  }
}
