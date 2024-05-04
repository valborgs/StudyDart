void main(){
  // List를 생성한다.
  List<int> list1 = [];
  // var나 dynamic을 사용하여 변수를 선언하는 경우
  var list2 = <int>[];

  print("list1 : $list1");
  print("list2 : $list2");

  // 만약 관리할 값이나 객체가 있다면
  List<int> list3 = [100, 200, 300];
  var list4 = <int>[100, 200, 300];

  print("list3 : $list3");
  print("list4 : $list4");

  // 리스트가 관리하는 값(혹은 객체)의 개수
  print("list3이 관리하는 값의 개수 ${list3.length}");

  // 리스트에 값(혹은 객체)를 추가한다.
  list3.add(400);
  print("list3 : $list3");

  list3.addAll([500, 600, 700]);
  print("list3 : $list3");

  // 삭제
  // 값(혹은 객체)를 지정하여 삭제
  list3.remove(500);
  print("list3 : $list3");

  // 순서를 지정하여 삭제
  list3.removeAt(2);
  print("list3 : $list3");

  // 값 가져오기
  // [ ] 안에 0 부터 1씩 증가하는 순서값을 지정한다.
  print("list3[0] : ${list3[0]}");
  print("list3[1] : ${list3[1]}");

  // 값 수정하기
  // [ ] 를 통해 접근하여 새로운 값을 넣어준다.
  print("list3 : $list3");
  list3[1] = 2000;
  print("list3 : $list3");

  // for문으로 반복한다.
  for(int i = 0 ; i < list3.length ; i++){
    print("list3 : ${list3[i]}");
  }

  for(int value in list3){
    print("value : $value");
  }

  // Map 생성
  Map<String, String> map1 = {};
  var map2 = <String, String>{};

  print("map1 : $map1");
  print("map2 : $map2");

  // 관리할 값(혹은 객체)를 지정하여 만든다.
  Map<String, String> map3 = {
    "data1" : "문자열1",
    "data2" : "문자열2",
  };

  var map4 = <String, String>{
    "data1" : "문자열1",
    "data2" : "문자열2",
  };

  print("map3 : $map3");
  print("map4 : $map4");

  // 값(혹은 객체) 가져오기
  print(map3['data1']);
  print(map3['data2']);

  // 값 수정하기
  map3['data1'] = "새로운 문자열";
  print(map3['data1']);

  // 값 추가하기
  // 없는 이름으로 값(혹은 객체)를 넣어주면 추가된다.
  map3['data3'] = "추가된 문자열";
  print(map3);

  // 값 삭제
  // 이름을 지정하여 삭제한다.
  map3.remove('data3');
  print(map3);

  // set : 집합
  var set1 = <int>{10, 20, 30, 10, 20, 20, 30, 10, 40};
  print(set1);

  // list -> set
  var list10 = <int>[10, 20, 30, 10, 20, 20, 30, 10, 40];
  print("list10 : $list10");

  var set10 = list10.toSet();
  print("set10 : $set10");

  // set -> list
  var list20 = set10.toList();
  print("list20 : $list20");

  // 다양한 타입의 값을 담고자 한다면...
  List<dynamic> list100 = [10, 11.11, true, "문자열"];
  var list200 = <dynamic>[10, 11.11, true, "문자열"];

  print("list100 : $list100");
  print("list200 : $list200");

  Map<String, dynamic> map100 = {
    "data1" : 100,
    "data2" : 11.11,
    "data3" : true,
    "data4" : "문자열"
  };

  var map200 = <String, dynamic>{
    "data1" : 100,
    "data2" : 11.11,
    "data3" : true,
    "data4" : "문자열"
  };

  print("map100 : $map100");
  print("map200 : $map200");

  // enum 사용
  Answers answers1 = Answers.yes;
  print(answers1);

  // switch 사용시 enum 타입을 지정하면
  // enum에 지정된 모든 값에 대한 case를 작성하도록 강제한다.
  switch(answers1){
    case Answers.yes :
      print("예스");
    case Answers.no :
      print("노");
    case Answers.none :
      print("논");
  }
}

// enum
enum Answers{
  yes,
  no,
  none,
}