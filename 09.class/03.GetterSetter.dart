//类
class Person {
  String name = '张三';
  Person(this.name);

  String get myName {
    return this.name;
  }

  set setName(value) {
    this.name = value;
  }
}

void main() {
  Person p = Person('张三麻子');

  print(p.myName);
  p.setName = '笑哈哈';
  print(p.name);
  print(p.myName);
}
