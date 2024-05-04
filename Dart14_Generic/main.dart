void main(){
  // 객체를 생성할 때 타입을 정해준다.
  var t1 = TestClass<int, double>(100, 11.11);
  print(t1.data1);
  print(t1.data2);

  var t2 = TestClass<String, bool>("문자열", true);
  print(t2.data1);
  print(t2.data2);

  // 리스트 생성시에 리스트를 관리할 값의 타입을 제네릭을 통해 정해줘야 한다.
  List<int> list1 = [10, 20, 30];
  var list2 = <int>[10, 20, 30];
  print(list1);
  print(list2);

  // 맵 생성시에 맵이 관리할 값의 타입과 이름의 타입을 제네릭을 통해 정해줘야 한다.
  Map<String, int> map1 = {"A":100, "B":200};
  var map2 = <int, bool>{0:true, 1:false};
  print(map1);
  print(map2);
}

// A와 B라는 제네릭 타입을 지정했다.
class TestClass<A, B>{
  A data1;
  B data2;

  TestClass(this.data1, this.data2);
}