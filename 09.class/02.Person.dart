class Person1 {
  String name = '张三';

  // 私有属性
  num _money = 1000;

  Person1(this.name);

  void printName() {
    print('我的名字：$name');
  }

  num getMoney() {
    return this._money;
  }

  // 私有方法
  num _myMoney() {
    return this._money;
  }
}
