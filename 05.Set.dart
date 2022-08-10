void main() {
  /// Set  Set类型是一个无序，元素唯一的集合,不像list可以通过下标找，set无法通过下标找
  // 字面量的形式
  Set set1 = <int>{1, 2, 3};
  print(set1);

  var set2 = new Set();
  // 添加元素
  set2.add('123');
  print(set2); // {'123'}
  print(set2.toList()); //['123']
  // set2.addAll({1,2,3});
  set2.addAll([1, 2, 3]); // 都可以的 Set 和 List，可迭代对象Iterable
  print(set2); // {'123',1,2,3}

  List l1 = [1, 2, 3, 4, 4, 3];
  print(l1.toSet()); //{1,2,3,4}

  var set3 = {1, 2, 3, 4};
  var set4 = {1, 2, 5, 6, 7};

  // 取交集
  var intersection = set3.intersection(set4); //{1,2}
  print(intersection); //{1,2}

  //取并集
  var union = set3.union(set4); // {1,2,3,4,5,6,7}
  print(union); // {1,2,3,4,5,6,7}
  
  //取差集,在前面set不在后面set的
  print(set3..difference(set4)); // {3,4}

  // 还有和List差不多的方法   any ，fold  where every 等等
}
