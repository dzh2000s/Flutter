import "dart:math";

abstract class Shape {
  double area();
  double perimeter();

  void displayInfo() {
    print('Площадь: ${area()}, периметр: ${perimeter()}');
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

  @override
  double area() {
    double p = (side1 + side2 + side3) / 2;
    return sqrt(p * (p - side1) * (p - side2) * (p - side3));
  }

  @override
  double perimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  var circle = Circle(10);
  var rectangle = Rectangle(4, 8);
  var triangle = Triangle(3, 4, 5);

  circle.displayInfo();
  rectangle.displayInfo();
  triangle.displayInfo();
}