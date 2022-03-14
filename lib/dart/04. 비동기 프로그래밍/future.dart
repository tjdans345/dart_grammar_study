
void main() async {

  // Future - 미래
  // 미래에 받아올 값
  // async 로 받아올 값
  // Future 는 기다렸다가 하나의 값 만 받을 수 있다.
  Future<String> name = Future.value("코드팩토리");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);
  // Future 키워드를 사용하면 async 로 프로그래밍이 가능하다.
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
  // Future.delayed(Duration(seconds: 2), (){
  //   print("Delay 끝");
  // });

  // Future 를 리턴해주는 함수만 await 을 사용 가능하다.
  final result1 = await addNumbers(3, 5); // 예상 결과 => 계산중, 함수 완료, 계산 완료 / 과연 ? 정답입니다~
  final result2 = await addNumbers(7, 10);

  print("reulst1 : $result1");
  print("reulst2 : $result2");
  print("result1 + result2 = ${result1 + result2}");
}

// 1 + 1 = 2
// 2 + 2 = 4
// await 을 사용하기위해 Future 타입을 리턴해준다!
Future<int> addNumbers(int number1, int number2) async {
  print("계산중 : $number1 + $number2");

  // 서버 시뮬레이션
  // await 을 사용해도 비동기로 돌아간다!
  // async 를 사용해야 await 사용 가능
  await Future.delayed(Duration(seconds: 2), () { // 이건 콜백함수 겠구만
  print("계산 완료 : $number1 + $number2 = ${number1 + number2}");
  });

  print("함수 완료");

  return number1 + number2;
}