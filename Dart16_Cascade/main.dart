void main(){
  // Cascade 연산자를 사용하지 않았을 때
  var t1 = TestClass(100, "문자열", true);
  t1.showData();
  t1.showData2();

  t1.data1 = 200;
  t1.data2 = "문자열2";
  t1.data3 = false;

  t1.showData();
  t1.showData2();

  print("---------------------------------------");

  // 객체를 생성할 때 Cascade 연산자를 사용한다.
  var t2 = TestClass(100, "문자열1", true)
    ..showData()
    ..showData2()
    ..data1 = 200
    ..data2 = "문자열2"
    ..data3 = false
    ..showData()
    ..showData2();

  print("---------------------------------------");

  var t3 = TestClass(100, "문자열1", true);

  t3
    ..showData()
    ..showData2()
    ..data1 = 200
    ..data2 = "문자열2"
    ..data3 = false
    ..showData()
    ..showData2();
}

class TestClass{

  int data1;
  String data2;
  bool data3;

  TestClass(this.data1, this.data2, this.data3);

  void showData(){
    print("data1 : $data1");
    print("data2 : $data2");
    print("data3 : $data3");
  }

  void showData2(){
    print('데이터1 : $data1');
    print('데이터2 : $data2');
    print('데이터3 : $data3');
  }

}