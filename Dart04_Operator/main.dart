void main(){
  // null을 허용하는 변수
  // var 변수는 허용되지 않는ㄷ나.
  int? a1 = null;
  dynamic? a2 = null;

  print('a1 : $a1');
  print('a2 : $a2');

  // null을 허용하는 변수에 값을 저장한다.
  a1 = 100;
  a2 = 200;

  print('a1 : $a1');
  print('a2 : $a2');

  // ?를 사용하지 않은 변수는 null을 담을 수 없다.
  // int a3 = null;

  int? a3 = null;
  print("a3 : $a3");

  a3 ??= 100;
  print("a3 : $a3");

  // a3에는 null이 아닌 100 저장되어 있으므로
  // 200이 저장되지 않는다.
  a3 ??= 200;
  print("a3 : $a3");

  // is 연산자.
  // 변수의 자료형을 확인할 수 있다.
  int a4 = 100;
  var a5 = 100;
  dynamic a6 = 100;

  print(a4 is int);
  print(a4 is double);
  print(a5 is int);
  print(a5 is double);
  print(a6 is int);
  print(a6 is double);

  a6 = 11.11;
  print(a6 is int);
  print(a6 is double);
}