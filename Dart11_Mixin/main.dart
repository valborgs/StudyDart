void main(){
  // Dog 객체를 생성한다.
  var dog = Dog(100, 10, "비숑");
  dog.showAge();
  dog.showName();
  dog.showDogFeeSize();
  dog.showAnimalRunLength();
  dog.showAnimalInfo();
}

class Animal{
  int age;
  String name;

  Animal(this.age, this.name);

  void showAge(){
    print("age : $age");
  }

  void showName(){
    print("name : $name");
  }
}

// 믹스인 정의
// on을 사용하여 믹스인 타입 사용을 제한한다.
// Animal 클래스에 기능을 추가하는 mixin을 정의한다.
mixin AnimalMixin on Animal{

  int animalRunLength = 0;

  void showAnimalRunLength(){
    print(animalRunLength);
  }

  void showAnimalInfo(){
    print("animalRunLength : $animalRunLength");
    print("age : $age");
    print("name : $name");
  }
}

// 강아지 클래스
class Dog extends Animal with AnimalMixin{
  int dogFeeSize;

  Dog(this.dogFeeSize, super.age, super.name);

  void showDogFeeSize(){
    print("강아지가 먹은 양은 ${dogFeeSize}g 입니다");
  }
}