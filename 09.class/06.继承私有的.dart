class Father {
  String name = "刘备";
  num _money = 1000; // 私有属性 不可被继承
  late String job;

  Father(job) {
    this.job = job;
  }

  void pM() {
    print('\$: ' + this._money.toString());
  }

  num get getMoney {
    return this._money;
  }
}

class Son extends Father {
  String name = '刘禅';

  Son(String job) : super(job);

  @override // 其实不写也行的
  void pM() {
    super.pM(); // 调用了父类的pM
    print(super._money);
    print(super.getMoney);
    print('刘婵哈哈哈，');
  }
}
