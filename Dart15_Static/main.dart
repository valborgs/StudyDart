void main(){
  var t1 = TestClass();

  // a1은 static 멤버이기 때문에 클래스 이름을 통해 접근한다.
  TestClass.a1++;
  t1.a2++;

  print('TestClass.a1 : ${TestClass.a1}');
  print('t1.a2 : ${t1.a2}');

  var t2 = TestClass();

  TestClass.a1++;
  t2.a2++;

  print('TestClass.a1 : ${TestClass.a1}');
  print('t2.a2 : ${t2.a2}');
}

class TestClass{

  static int a1 = 0;
  int a2 = 0;

  // 일반 메서드는 객체를 생성해야지만 사용할 수 있는 메서드이므로
  // static 멤버와 일반 멤버 변수를 모두 사용할 수 있다.
  void test1(){
    print("a1 : $a1");
    print("a2 : $a2");
  }

  // static 메서드는 객체를 생성하지 않고 사용할 수 있는 메서드이므로
  // 객체를 생성해야지만 생성되는 일반 멤버 변수는 사용할 수 없다.
  static void test2(){
    print("a1 : $a1");
    // print("a2 : $a2");
  }

}