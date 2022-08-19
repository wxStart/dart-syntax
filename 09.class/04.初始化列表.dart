class Person {
  String name;
  int age;
  // 初始化列表
  Person()
      : name = '张三',
        age = 20 {}
}

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);
  
  // 二维的平面的点
  Point.twoD(double x, double y):this(x,y,0);

}

void main() {
  Person p = Person();
  print(p.name);

  var p0 = Point.twoD(1, 1);
   print(p0.z);
}
