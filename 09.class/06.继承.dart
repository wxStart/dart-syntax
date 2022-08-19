/// 继承
///  子类通过extends 关键字继承父类
/// 子类中可以通过@override 覆写父类的东西
/// 子类可以通过super，引用父类中的方法和属性
///

import '06.继承私有的.dart';

void main() {
  var f = Father('蜀国国王');
  print(f.name);
  // print(f._money);

  var son = Son('皇帝');
  // print(son._money);
  print(son.name);
  print(son.getMoney);
  son.pM();
  print(son.job);
}
