void main(){
  // Anima은 추상클래스이므로 객체를 생성할 수 없다.
  // Animal animal = Animal(10, "비숑");
  // showInfo(animal);

  // Animal을 구현할 클래스의 객체를 생성한다.
  Dog dog = Dog(100, 10, "비숑");
  // Dog는 Animal을 상속받았기 때문에 Animal 타입
  // 변수에 담을 수 있다.
  showInfo(dog);
  dog.showRunSpeed();
}

// 개발자가 만든 메서드를 호출하는 함수
// 이럴 경우에는 함수를 받는 매개변수를 정의하면 된다.
// 만약 함수의 이름을 정했거나 다수의 함수를 받아서 사용할 경우에는
// 추상 클래스를 사용하는 것이 더 깔끔하다.
void showInfo(Animal animal){
  animal.showName();
  animal.showAge();
}

// 추상 클래스 Animal을 정의한다.
abstract class Animal{
  int age;
  String name;

  Animal(this.age, this.name);

  // showAge와 showName을 구현하지 않으면
  // Animal을 사용하는 클래스에서 반드시 재구현 해줘야 한다.
  void showAge();
  void showName();
}

// 추상클래스를 사용할 때는 implements를 사용한다.
class Dog implements Animal{
  int runSpeed;
  // Animal이 가지고 있는 변수들 재정의
  @override
  int age;

  @override
  String name;

  Dog(this.runSpeed, this.age, this.name);

  void showRunSpeed(){
    print("강아지의 속도는 : $runSpeed 입니다");
  }

  // Animal이 가지고 있는 메서드 재구현
  @override
  void showAge() {
    print("강아지의 나이는 ${age}살 입니다");
  }

  @override
  void showName() {
    print("강아지의 이름은 ${name}입니다");
  }

}