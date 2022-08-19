class Person {
  String name = "张三";

  static String nameS = '李四';

  void printName() {
    print('name:${this.name}');
    // print('name:${this.nameS}'); //报错
    print('nameS:${nameS}'); // 非静态方法可以访问静态属性
    pNS(); // 非静态方法可以访问静态方法
  }

  static void pNS() {
    //  print('name:${this.name}');
    // print('name:${name}'); // 静态方法不能访问非静态属性
    print('nameS: ${nameS}');
    // printName(); //报错  静态方法不能访问非静态方法
  }

  String getStaticName() {
    return nameS;
  }
}

void main() {
  Person.pNS();
  print(Person.nameS);

  Person p1 = Person();
  // p1.nameS;
  print(p1.getStaticName());
  p1.printName();
}
