void main(){
  var dog1 = Dog1(100, 10, "몰티즈");
  dog1.showName();
  dog1.showAge();
  dog1.showDogRunLength();

  var dog2 = Dog2(200, 20, "비숑");
  dog2.showName();
  dog2.showAge();
  dog2.showDogRunLength();

  Animal dog10 = Dog1(100, 10, "몰티즈");
  dog10.showName();
  dog10.showAge();

  Animal dog20 = Dog2(200, 20, "비숑");
  dog20.showName();
  dog20.showAge();
}

// 부모 클래스
class Animal{
  late int age;
  late String name;

  Animal(this.age, this.name);

  void showAge(){
    print("나이는 ${age}살 입니다");
  }

  void showName(){
    print("이름은 ${name}입니다");
  }
}

// 상속
class Dog1 extends Animal{

  late int dogRunLength;

  Dog1(this.dogRunLength, super.age, super.name);

  void showDogRunLength(){
    print("강아지가 뛴 거리는 ${dogRunLength}m 입니다");
  }
}

// 클래스를 인터페이스로 사용한다.
// 쉼표로 구분하여 다수를 작성해도 된다.
// 클래스를 인터페이스로 구현할 경우 클래스가 가진
// 모든 변수와 모든 메서드들을 재구현 해줘야 한다.
// 즉, 부모가 가지고 있는 것을 물려받는 개념이 아니고
// 전부 다시 구현하는 개념이 된다.
class Dog2 implements Animal{
  late int dogRunLength;
  // Animal이 가지고 있는 모든 변수들을 다시 정의한다.
  @override
  int age;

  @override
  String name;

  Dog2(this.dogRunLength, this.age, this.name);

  void showDogRunLength(){
    print("강아지가 뛴 거리는 ${dogRunLength}m 입니다");
  }
  // Animal이 가지고 있는 모든 메서드들을 다시 구현해야 한다.
  @override
  void showAge() {
    print("Dog2의 showAge : $age");
  }

  @override
  void showName() {
    print("Dog2의 showName : $name");
  }
}