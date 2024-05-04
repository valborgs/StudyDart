import 'dart:html';

void main(){
  int a1 = 10;
  if(a1 == 10){
    print("a1은 10입니다");
  }

  print("--------------------------");

  if(a1 == 20){
    print("a1은 20입니다");
  }

  print("--------------------------");

  if(a1 == 10){
    print("a1은 10입니다");
  }else{
    print("a1은 10이 아닙니다");
  }

  print("--------------------------");

  if(a1 == 20){
    print("a1은 20입니다");
  }else{
    print("a1은 20이 아닙니다");
  }

  print("--------------------------");
  
  if(a1 == 5){
    print("a1은 5입니다");
  }else if(a1 == 10){
    print("a1은 10입니다");
  }else if(a1 == 20){
    print("a1은 20입니다");
  }else{
    print("a1은 5, 10, 20입니다");
  }

  print("--------------------------");

  // switch
  switch(a1){
    case 5 :
      print("a1은 5입니다");
    case 10 :
      print("a1은 10입니다");
    case 20 :
      print("a1은 20입니다");
    default :
      print("a1은 5, 10, 20이 아닙니다");
  }

  print("--------------------------");

  // while
  // kotlin과 동일하다
  int a2 = 0;

  while(a2 < 10){
    print("while : $a2");
    a2++;
  }

  print("--------------------------");

  int a3 = 0;
  do{
    print("do while: $a3");
    a3++;
  }while(a3 < 10);

  print("--------------------------");

  // 일반적인 for 문
  // for(초기식 ; 조건식 ; 증감식) {
  //     코드
  // }
  // 초기식 -> 조건식(참) -> 코드 -> 증감식 -> 조건식(참)
  // ... -> 조건식(거짓) -> 종료
  for(int i = 0 ; i < 10 ; i++){
    print("for : $i");
  }

  print("--------------------------");

  var list = [1,2,3];
  // 리스트에 담긴 값의 수 만큼 반복하며
  // 반복 번째의 값을 in 좌측에 선언되어 있는 변수에 담아준다.
  for(int value in list){
    print("value : $value");
  }

  print("--------------------------");
}