import '02.Person.dart';

//类
class Person {
  String name = '张三';

  num _money = 1000;

  Person(this.name);

  void printName() {
    print('我的名字：$name');
  }
}

void main() {
  Person p = Person('张三麻子');
  p.printName();
  print(p.name);
  print(p._money);

  Person1 p1 = Person1('张三麻子');
  p1.printName();
  print(p1.name);
  // print(p1._money); // 报错 私有的属性无法访问

  print(p1.getMoney());
  // p1._myMoney() // 报错 私有的方法无法访问
}
