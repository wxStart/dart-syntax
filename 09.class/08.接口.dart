//接口  使用 implements 来指定，
// 接口就是约定类里面有哪些东西
// 普通类要实现接口里面定义的东西



abstract class Processor {
  late String core;
  arch(String name);

  // run(){
  //   print('11');
  // }
}

abstract class Camera {
  late String resolution; // 分辨率

  bran(String name); // 品牌

}

class Phone implements Processor, Camera {
  @override
  late String core;

  @override
  late String resolution;

  Phone(this.core, this.resolution);

  @override
  arch(String name) {}

  @override
  bran(String name) {}
}

void main() {}
