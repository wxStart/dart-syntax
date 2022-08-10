void main() {
  // Dart中声明函数不需要 function 关键字， 但是有返回类型
  num nFun(int n) {
    return n * n;
  }

  print(nFun(2)); // 4

  // 匿名函数

  var afun = (int n) {
    return n * n;
  };
  print(afun(4)); // 16

  // 箭头函数，箭头函数只是函数的一种简写
  var afun2 = (int n) => n * n;
  print(afun2(6)); // 36

  // 立即执行函数
  (int n) {
    print(n); // 9 
  }(9); 
}
