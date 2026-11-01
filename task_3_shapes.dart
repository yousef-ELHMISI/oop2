import 'dart:io';
import 'dart:vmservice_io';

abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(String color, this.length, this.width) : super(color);

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return 'color :$color , length : $length , width : $width , area : ${getArea()}';
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(String color, this.base, this.height) : super(color);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return "color: $color, base: $base, height: $height, Area: ${getArea()}";
  }
}