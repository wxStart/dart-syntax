///  混入 （mixin）
///
///
/// 混入的两种声明方式
///     将类作为混入
///          做mixin的类智能继承自Object，不能继承其他类
///          做为minx的类不能有构造函数
///     使用mixin 关键字声明
///
/// 混入的作用，可以提高代码的复用效率，普通类可以通过with来使用混入
///
///
///
///

class ClassName {}

// 做mixin的类智能继承自Object，不能继承其他类
class MixinA extends Object {
  String name = "MixinA";

  // 做为minx的类不能有构造函数
  // MixinA();
  pA() {
    print('A');
  }
}

mixin MixinB {
  String name = "B";

  pB() {
    print('b');
  }
}

class My with MixinA, MixinB {}

void main() {
  My my = My();
  my.pA();
  my.pB();

  // 重复属性或者方法 后引入的生效
  print(my.name);
}
