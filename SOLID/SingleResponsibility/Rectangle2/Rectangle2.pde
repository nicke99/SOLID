

void setup()
{
  size(800, 400);
  
  Rectangle rectangle = new Rectangle(100f,100f,600f,200f);
  RectangleRenderer renderer = new RectangleRenderer();
  renderer.Draw(rectangle);
}

class RectangleRenderer
{
  public void Draw(Rectangle g)
  {
    float x=g.x;
    float y=g.y;
    float a=g.x+g.width;
    float b=g.y+g.height;
    
    line(x,y,a,y);
    line(a,y,a,b);
    line(a,b,x,b);
    line(x,b,x,y);
  }
}

class Rectangle
{
  public float x;
  public float y;
  public float width;
  public float height;
  
  Rectangle(float xx,float yy,float w,float h)
  {
    x=xx;
    y=yy;
    width=w;
    height=h;
  }
}
