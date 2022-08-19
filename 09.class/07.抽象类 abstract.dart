/// 抽象类
/// 
/// 抽象类是使用abstract关键字修饰的类
/// 
/// 抽象类的作用是充当普通类的模板,约定一些必要的属性和方法
/// 
/// 抽象方法是指没有方法体的方法
///     抽象类中一般有抽象方法
///     普通类中不能有抽象方法的
/// 
/// 抽象类不能被实例化
/// 
/// 抽象类可以被普通类继承
///     普通类继承抽象类，必须实现抽象类的方法
/// 
/// 
/// 抽象类还可以充当接口
/// 
/// 
/// 


abstract class Phone {
  void pName();

  void inFo(){
    print('啊哈哈哈 ');
  }
}

class Xiaomi extends Phone{

  @override
  void pName(){
    print('xiaomi');
  }

}




void main(){
  var xiaomi = Xiaomi();
   xiaomi.pName();
  xiaomi.inFo();


}