import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject([this.color = 'white', this.filled = false]);

  @override
  String toString() {
    return "Color: $color, Filled: $filled";
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle([this.side1 = 1.0, this.side2 = 1.0, this.side3 = 1.0]) : super();

  double getArea() {
    double heron = getPerimeter() / 2;
    double area =
        sqrt(heron * (heron - side1) * (heron - side2) * (heron - side3));
    return area;
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle(
      [this.height = 1.0,
      this.width = 1.0,
      String color = "white",
      bool filled = false])
      : super(color, filled);

  double getArea() {
    return height * width;
  }

  double getPerimeter() {
    return 2 * (height + width);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}
void main() {
  Triangle t1 = Triangle();
  print(t1.toString());
  print("Triangle Area: ${t1.getArea()}");
  print("Triangle Perimeter: ${t1.getPerimeter()}");


  Rectangle r1 = Rectangle(5.0, 10.0, "blue", true);
  print(r1.toString());
  print("Rectangle Color: ${r1.color}");
  print("Rectangle Perimeter: ${r1.getPerimeter()}");
}