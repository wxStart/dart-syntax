// 编程方式： 面向对象、面向过程（函数式的编程）

//类
class Person {
  final name = '张三';
  dynamic age;
  void printName() {
    print('我的名字：$name');
  }
}

// 构造函数， 构造函数和类同名
class Point {
  late num x, y;
  Point(this.x, this.y) {
    print('我是实例化时候的被调用');
  }
  Point.n(x, y) {
    this.x = x;
    this.y = y;
  }
  printY() {
    print('y:${this.y}');
  }
}

// 常量构造函数
class Point1 {
  // 属性必须通过 final声明
  final num x;
  final num y;

  // 构造函数必须通过const声明，并且不能有函数体
  const Point1(this.x, this.y);
}

// 工厂构造函数 不就是单例模式么
//类
class PersonF {
  late String name;
  static var instance = null;
  factory PersonF(String name) {
    // 工厂构造函数不能使用 this
    if (PersonF.instance == null) {
      PersonF.instance = new PersonF.newSelf(name);
    }
    return PersonF.instance;
  }
  PersonF.newSelf(this.name);
}

void main() {
  Person p = Person();
  p.printName();
  print(p.name);

  Point p1 = Point.n(1, 3);
  p1.printY();

  Point p2 = Point(1, 3);
  p2.printY();

  print(Point(1, 2) == Point(1, 2)); // false

  //常量构造函数，构造不可变对象的时候需要使用const
  print(Point1(1, 2) == Point1(1, 2)); // false
  print(const Point1(1, 2) == const Point1(1, 2)); // true

  PersonF p3 = PersonF('哈哈哈');
  PersonF p4 = PersonF('哈哈哈1');
  print(p3.name);
  print(p4.name);
}
