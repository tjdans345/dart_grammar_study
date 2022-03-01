
void main() {

  // Future - 미래
  // 미래에 받아올 값
  // async 로 받아올 값
  Future<String> name = Future.value("코드팩토리");
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // Future 키워드를 사용하면 async 로 프로그래밍이 가능하다.
  // 1번 파라미터 - 지연할 기간 (얼마나 지연할건지) Duration
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
  // Future.delayed(Duration(seconds: 2), (){
  //   print("Delay 끝");
  // });

  addNumbers(3, 5); // 예상 결과 => 계산중, 함수 완료, 계산 완료 / 과연 ? 정답입니다~
}

// 1 + 1 = 2
// 2 + 2 = 4
void addNumbers(int number1, int number2){
  print("계산중 : $number1 + $number2");

  // 서버 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
  print("계산 완료 : $number1 + $number2 = ${number1 + number2}");
  });

  print("함수 완료");

}