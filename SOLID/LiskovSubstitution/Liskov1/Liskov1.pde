ArrayList <Shape>Shapes;

void setup()
{
  Shapes = new ArrayList<Shape>();
  Shapes.add(new Circle(10,10,10));
  Shapes.add(new Square(30,10,10));
}

void draw()
{
  for(Shape shape: Shapes)
  {
    switch(shape.Type)
    {
      case("Circle"):
        Circle c=(Circle)shape;
        c.Draw();
      break;
      
      case("Square"):
        Square s=(Square)shape;
        s.Draw();
      break;
      
      //etc....
    }
  }
}

class Shape
{
  String Type;
  float X;
  float Y;
}

class Circle extends Shape
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

class Square extends Shape
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
