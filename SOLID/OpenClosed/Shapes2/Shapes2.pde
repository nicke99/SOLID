ArrayList <IShape>Shapes;

void setup()
{
  Shapes = new ArrayList<IShape>();
  Shapes.add(new Circle(10,10,10));
  Shapes.add(new Square(30,10,10));
}

void draw()
{
  for(IShape shape: Shapes)
  {
    shape.Draw();
  }
}

interface IShape
{
  void Draw();
}

class Shape
{
  String Type;
  float X;
  float Y;
}

class Circle extends Shape implements IShape
{
  Circle(float x, float y, float d)
  {
    Type ="Circle";
    X=x;
    Y=y;
    Diameter = d;
  }
  
  float Diameter;
  
  void Draw()
  {
    circle(X,Y,Diameter);
  }
}

class Square extends Shape implements IShape
{
   Square(float x, float y, float w)
   {
     Type="Square";
     X=x;
     Y=y;
     Width = w;
   }
   
   float Width;
   
   void Draw()
   {
     square(X,Y,Width);
   }
}
