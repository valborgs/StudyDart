Future<void> main() async {

  // Future 타입 변수를 선언한다.
  // Future 타입은 미래에 비동기 작업을 통해 구한 값을 담을 변수를 정의할 때 사용한다.
  // 다른 변수들과 구분하기 위해 명시적으로 표시하기 위해 사용한다.
  Future<String> name;
  Future<int> number;
  Future<bool> isOpend;

  // addNumber(100, 200);
  // addNumber2(100, 200);
  // addNumber3(100, 200);
  var result = await addNumber4(100, 200);
  print('result : $result');

}

void addNumber(int n1, int n2){
  print('$n1 + $n2 계산 시작');

  print('$n1 + $n2 = ${n1 + n2}');

  print('$n1 + $n2 코드 실행 끝');
}

void addNumber2(int n1, int n2){
  print('$n1 + $n2 계산 시작');

  // 일정 시간 후에 지정된 작업을 수행하라는 비동기 처리 가동
  Future.delayed(Duration(seconds: 3), () {
    print('$n1 + $n2 = ${n1 + n2}');
  });

  Future.delayed(Duration(seconds: 2), (){
    print('$n1 - $n2 = ${n1 - n2}');
  });

  Future.delayed(Duration(seconds: 0), (){
    print('$n1 * $n2 = ${n1 * n2}');
  });

  print('$n1 + $n2 코드 실행 끝');
}

Future<void> addNumber3(int n1, int n2) async {
  print('$n1 + $n2 계산 시작');

  // 비동기 처리 부분에 await을 넣어주면
  // 동기처리, 즉 작업이 끝날 때 까지 대기했다가 작업이 끝나면
  // 다음 작업이 수행될 수 있도록 해준다.
  // 동기처리를 한 작업이 있는 함수의 경우 반환 타입은 Future 타입으로
  // 해줘야 하고 함수 뒤에 async를 붙여줘야 한다.
  await Future.delayed(Duration(seconds: 3),(){
    print('$n1 + $n2 = ${n1 + n2}');
  });

  print('$n1 + $n2 코드 실행 끝');
}

// 동기처리된 비동기 작업을 통해 구한 값을 반환한다.
Future<int> addNumber4(int n1, int n2) async {
  var result = 0;

  print('$n1 + $n2 계산 시작');

  await Future.delayed(Duration(seconds: 3),(){
    result = n1 + n2;
  });

  print('$n1 + $n2 코드 실행 끝');

  return result;
}