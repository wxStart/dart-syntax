/// 泛型函数

/**
 * 之前的写法
 */
// String getData(String value){
//     return value;
// }

// void main(){
//     // print(getData(1));// 报错

// }

/**
 * 之前的写法
 */

T getData<T>(T value) {
  return value;
}

// 只约定参数类型，不约定返回类型的
getData1<T>(T value) {
  return value;
}

///  泛型类
///
class ClassName<T> {
  Set s = new Set<T>();

  void add(T value) {
    this.s.add(value);
  }
}

void main() {
  print(getData<int>(1));
  print(getData<String>('11'));

  ClassName nC = ClassName<int>();
  nC.add(1);
  print(nC.s);

  ClassName sC = ClassName<String>();
  nC.add('1');

  /// 字面量形式的泛型
  Set s = <int>{};

}
