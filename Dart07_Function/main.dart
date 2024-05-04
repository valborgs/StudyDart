void main(){
  // 함수 호출
  var a1 = test_function();
  print("a1 : $a1");

  // 포지셔널 매개변수가 정의되어 있다면
  // 매개변수의 순서에 맞춰서 값을 전달한다.
  var result2 = positional_function(100, 200);
  print("result2 : $result2");

  // 기본값이 있는 매개변수는 생략이 가능하다.
  var result3 = positional_function2(100, 200, 300);
  print("result3 : $result3");

  var result4 = positional_function2(100, 200);
  print("result4 : $result4");

  var result5 = positional_function2(100);
  print("result5 : $result5");

  // 네임드 매개변수를 가진 함수 호출
  var result6 = named_function(a1: 100, a2: 200);
  print("result6 : $result6");

  // 네임드 매개변수의 경우 순서를 지킬 필요가 없다.
  var result7 = named_function(a2: 200, a1: 100);
  print("result7 : $result7");

  // required가 붙어 있는 네임드 매개변수는 반드시 값을 지정해줘야 한다.
  // var result8 = named_function();

  // 기본값이 null로 설정된(required를 삭제한) 매개변수가 있는 함수 호출
  var result9 = named_function2(a1: 100, a2:200);
  print("result9 : $result9");

  var result10 = named_function2(a1: 100);
  print("result10 : $result10");

  // 기본값이 지정된 매개변수가 있는 함수 호출
  // 네임드 파라미터는 순서가 관계가 없으므로 중간의 매개변수를 생략해도 된다.
  var result11 = named_function3(a1: 100, a2: 200, a3: 300);
  print("result11 : $result11");

  var result12 = named_function3(a1: 100, a2: 200);
  print("result12 : $result12");

  var result13 = named_function3(a1: 100);
  print("result13 : $result13");

  var result14 = named_function3(a1: 100, a3: 300);
  print("result14 : $result14");

  // 포지셔널과 네임드가 같이 있는 함수 호출
  // 포지셔널이 앞쪽에 있다.
  var rersult15 = function4(100, a2: 200, a3: 300);
  print("result15 : $rersult15");

  var rersult16 = function4(100, a2: 200);
  print("result16 : $rersult16");
  
  // 함수를 매개변수로 받는 함수에 전달할 함수는 익명 함수로 작성하는 경우가 많다.
  function5(100, 200, (v1, v2){
    print("더하기");
    return v1 + v2;
  });

  function5(100, 200, (v1, v2){
    print("빼기");
    return v1 - v2;
  });

  // 만약 전달할 함수 내부의 코드가
  // return 값
  // 형태만 있다면 람다식으로 사용이 가능하다.
  function5(100, 200, (v1, v2){
    return v1 + v2;
  });
  function5(100, 200, (v1, v2) => v1 + v2);
}

// 반환값 : 반환값이 있으면 반환값의 타입을 적어주고
// 없으면 void를 작성해주세요
int test_function(){
  return 100;
}

// 포지셔널 매개변수
int positional_function(int a1, int a2){
  return a1 + a2;
}

// 포지셔널 매개변수의 기본값
// 기본값을 가질 매개변수들을 [ ] 로 묶어 준다
int positional_function2(int a1, [int a2 = 2, int a3 = 3]){
  return a1 + a2 + a3;
}

// 네임드 매개변수
int named_function({
  required int a1,
  required int a2
}){
  return a1 + a2;
}

// required를 붙이지 않은 매개변수
// required를 붙이지 않은 매개변수는 필수 항목이 아니기 때문에
// 개발자가 값을 전달하지 않을 수도 있다.
// 이 때, null을 허용하는 변수로 정의해줘야 한다.
int named_function2({required int a1, int? a2}){
  if(a2 == null){
    return a1;
  } else {
    return a1 + a2;
  }
}

// 만약 기본값을 직접 지정한다면
// 위와 마찬가지로 required를 제거한다
int named_function3({required int a1, int a2 = 2, int a3 = 3}){
  return a1 + a2 + a3;
}

// 포지셔널과 네임드가 섞여있을 경우
// 포지셔널을 앞쪽에 작성해줘야 한다.
int function4(int a1, {required int a2, int a3 = 3}){
  return a1 + a2 + a3;
}

// 함수를 매개변수로 받는 함수
// f3 매개변수는 반환타입이 int이고 매개변수가 두 개 있는 함수를 받는 매개변수로 정의하였다.
void function5(int a1, int a2, int Function(int v1, int v2) f3){
  var r100 = f3(a1, a2);
  print("r100 : $r100");
}