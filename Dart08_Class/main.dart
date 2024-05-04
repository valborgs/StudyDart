import 'testclass100.dart';

void main(){
  // 클래스를 통해 객체를 생성한다.
  // new 키워드를 이용해 객체를 생성한다.
  var t1 = new TestClass1();
  // dart 언어 버전이 업데이트 되면서 new는 생략 가능하도록 변경되었다.
  var t2 = TestClass1();

  print("t1.memeber_a1 : ${t1.member_a1}");
  print("t1.memeber_a2 : ${t1.member_a2}");
  t1.showMember();

  print("t2.memeber_a1 : ${t2.member_a1}");
  print("t2.memeber_a2 : ${t2.member_a2}");
  t2.showMember();

  // 생성자를 가지고 있는 클래스의 객체 생성
  var t3 = TestClass2();
  print("t3 : $t3");

  // 호출되는 생성자에 값을 전달한다.
  var t4 = TestClass3(100, 200);
  print("t4.member_a1 : ${t4.member_a1}");
  print("t4.member_a2 : ${t4.member_a2}");

  var t5 = TestClass4();
  print("t5.member_a1 : ${t5.member_a1}");
  // private 변수이긴 하나 같은 파일이므로 사용이 가능하다.
  print("t5._member_a2 : ${t5._member_a2}");
  t5.showMember();

  // 다른 파일에 있는 클래스로 객체를 생성한다.
  var t100 = TestClass100();
  print("t100.test100_a1 : ${t100.test100_a1}");
  // 다른 파일에 있는 클래스로 만든 객체의 private 변수는 접근이 불가능하다.
  // print("t100._test100_a2 : ${t100._test100_a2}");

  t100.test100Method1();
  // 다른 파일에 있는 클래스에 정의되어 있는 private 메서드는 사용할 수 없다.
  // t100._test100Method2();

  // setter/getter 사용
  var t200 = TestClass200(100, 200);

  // getter 사용
  print("t200.val1 : ${t200.val1}");
  print("t200.val2 : ${t200.val2}");

  // setter 사용
  t200.val1 = 1000;
  print("t200.val1 : ${t200.val1}");

  t200.val1 = -1000;
  print("t200.val1 : ${t200.val1}");

  var t500 = TestClass500(100, 200);
  print("t500.memberA : ${t500.memberA}");
  print("t500.memberB : ${t500.memberB}");
}

// 클래스
// class 클래스이름
class TestClass1{
  // 멤버 변수
  // 객체를 생성해야지만 사용이 가능하다
  int member_a1 = 100;
  int member_a2 = 200;

  // 멤버 메서드
  // 객체를 생성해야지만 사용이 가능하다.
  void showMember(){
    print("member_a1 : $member_a1");
    print("member_a2 : $member_a2");
  }
}

class TestClass2{
  // 생성자
  // 클래스 이름과 동일하게 작성해준다.
  TestClass2(){
    print("생성자 호출");
  }
}

// 생성자를 통해 멤버 변수에 값을 넣어준다.
class TestClass3{
  // late를 붙이면 지연 초기화가 가능하다
  // 변수에 값을 나중에 넣어줄 수 있다.
  late int member_a1;
  late int member_a2;

  // 생성자
  // this를 사용하면 멤버 변수에 접근할 수 있다.
  // 멤버 변수에 값을 담는 코드만 있는 생성자는 간략하게 한 줄로 작성이 가능하다.
  // TestClass3(member_a1){
  //   this.member_a1 = member_a1;
  // }

  // 매개변수의 타입을 생략하면 dynamic이 된다.
  TestClass3(member_a1, member_a2) :
        this.member_a1 = member_a1,
        this.member_a2 = member_a2;

}

class TestClass4{

  int member_a1 = 100;
  // 변수 앞에 _를 붙여주면 private 변수가 된다.
  // 같은 파일에서는 자유롭게 사용이 가능하다.
  int _member_a2 = 200;

  void showMember(){
    // 같은 클래스 내부라면 private에도 접근이 가능하다.
    print("showMember");
    print("member_a1 : $member_a1");
    print("_member_a2 : $_member_a2");
  }

}

class TestClass500 {
  late int memberA;
  late int memberB;

  //  TestClass500(memberA, memberB){
  //    this.memberA = memberA;
  //    this.memberB = memberB;
  //  }

  // 생성자로 전달되는 값이 멤버 변수에 바로 담기게 된다.
  TestClass500(this.memberA, this.memberB);
}