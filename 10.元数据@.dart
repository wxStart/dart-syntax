class Phone {
  // 旧版本中的关机方法

  @deprecated
  offDown() {
    off();
  }

  off() {
    print('关机');
  }
}

void main() {
  // 元数据 ，以@开头的
  /// 元数据可以用来 修饰库 、类、构造器、函数、字段、参数或者变量声明的前面
  ///
  /// @override 重写
  /// 某些方法添加该注解后，表示重写了父类中的同名方法

  /// @required 必填
  ///  可以用来注解dart中的命名参数，用来指示它是必填参数

  /// @deprecated 弃用
  /// 若是给类或者某些方法加上这个注解，表示此类或者此方法建议不再使用
  ///
  ///

  var phone = Phone();

  phone.offDown(); // 可以运行，但是会有提示，中划线

  phone.off();
}
