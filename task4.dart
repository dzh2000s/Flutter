abstract class Vehicle {
  void drive();
  void stop();
}

class Car extends Vehicle {
  int speed = 0;
  String color;
  String _engineStatus;

  Car(this.color, this._engineStatus);

  @override
  void drive() {
    if (speed < 150) {
      speed = speed + 30;
    }
  }

  @override
  void stop() {
    speed = 0;
  }

  void displayInfo() {
    print('Автомобиль: цвет $color, статус двигателя $_engineStatus, скорость $speed');
  }
}

class Bycicle extends Vehicle {
  int speed = 0;
  String color;
  String engineStatus;

  Bycicle(this.color, this.engineStatus);

  @override
  void drive() {
    if (speed < 50) {
      speed = speed + 10;
    }
  }

  @override
  void stop() {
    speed = 0;
  }
  
  void displayInfo() {
    print('Велосипед: цвет $color, статус двигателя $engineStatus, скорость $speed');
  }
}

void main() {
  var bycicle = Bycicle('зеленый', 'нет');
  var car = Car('красный', 'норма');

  car.drive();
  car.drive();
  bycicle.drive();
  bycicle.drive();
  bycicle.drive();
  car.displayInfo();
  bycicle.displayInfo();

  car.stop();
  bycicle.stop();
  car.displayInfo();
  bycicle.displayInfo();
}
