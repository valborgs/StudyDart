class TestClass100{
  // 일반 멤버 변수
  int test100_a1 = 100;
  // private 변수
  int _test100_a2 = 200;
  
  // 일반 멤버 메서드
  void test100Method1(){
    print("test100Method1");
  }

  // private 멤버 메서드
  void _test100Method2(){
    print("_test100Method2");
  }
}

class TestClass200{
  // private 변수
  int _private_memberA1 = 0;
  int _private_memberA2 = 0;

  // private 변수 중 초기값이 필요한 변수들을 생성자를 통해 초기화 해준다.
  TestClass200(_private_memberA1, _private_memberA2) :
      this._private_memberA1 = _private_memberA1,
      this._private_memberA2 = _private_memberA2;

  // getter
  int get val1{
    return _private_memberA1;
  }
  int get val2{
    return _private_memberA2;
  }

  // setter
  set val1(int v1){
    if(v1 > 0){
      _private_memberA1 = v1;
    }
  }

}