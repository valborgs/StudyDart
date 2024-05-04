void main(){
  // 자식 클래스를 통해 객체를 생성한다.
  var dog1 = Dog(100, 10, "몰티즈");
  dog1.showDogRunLength();
  dog1.showAge();
  dog1.showName();

  var dog2 = Dog(200, 12, "비숑");
  dog2.showDogRunLength();
  dog2.showAge();
  dog2.showName();
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

// 자식 클래스
class Dog extends Animal{
  late int dogRunLength;

  // 클래스의 객체를 생성할 때 생성자에서
  // 부모가 가진 매개변수가 없는 생성자를 자동으로 호출하려고 한다.
  // 만약 부모클래스에 매개변수가 없는 생성자가 없다면
  // 부모의 생성자를 명시적으로 호출해줘야 한다.
  Dog(this.dogRunLength, super.age, super.name);

  void showDogRunLength(){
    print("강아지가 뛴 거리는 ${dogRunLength}m 입니다");
  }

  // 부모가 가지고 있는 메서드를 재구현하는 것도 가능하다.
  @override
  void showName(){
    super.showName();
    print("이름은 ${name}입니다2");
  }
}