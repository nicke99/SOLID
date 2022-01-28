
void setup()
{
  ArrayList <Shape>Shapes = new ArrayList<Shape>();
  Shapes.add(new Circle());
  
  for(Shape shape: Shapes)
  {
    switch(shape.Type)
    {
      case("Circle"):
        circle(10,10,10);
      break;
    }
  }
}

class Shape
{
  String Type;
}

class Circle extends Shape
{
  Circle()
  {
    Type ="Circle";
  }
}
