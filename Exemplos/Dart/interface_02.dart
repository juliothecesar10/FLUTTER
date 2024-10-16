void main() {
  Rectangle rec = Rectangle();
  rec.displayType();
  rec.calculateArea();
}

//  Shape interface
abstract class Shape {
  void displayType() {
    print("Shape");
  }
}
//  Area interface

abstract class Area {
  void calculateArea() {
    print("Area");
  }
}

// Class Rectangle implementing Shape and Area
class Rectangle implements Shape, Area {
  @override
  void displayType() {
    print("Rectangle");
  }
  
  @override
  void calculateArea() {
    print("Rectangle area");
  }
}