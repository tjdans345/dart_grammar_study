
void main() {

  // variable
  // var 를 이용해 선언한 변수는 같은 스코프안에서는 재선언은 불가능하다 (JS의 let이랑 비슷하네)
  var name = "메테오";
  print(name);

  var name2 = "레드벨벳";
  print(name2);

  name = "플러터";
  print(name);



  // 변수 타입

  // 01. 정수
  // integer
  int number = 10;
  print(number);

  int number1 = 2;
  int number2 =4;
  print(number1 + number2);
  print(number1 - number2);
  print(number1 / number2);
  print(number1 * number2);

  // 02. 실수
  double number3 = 2.5;
  double number4 = 0.5;

  // 03. 불리언
  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);

  // 04. 문자열 타입
  String girGroup = "레드벨벳쨔응";
  print(girGroup);

  // 05. var : 타입 유추 -> 런타임시 타입 정해짐
  // var 로 다 선언되있으면 무슨 타입인지 알아보기 힘들다
  var test = true;
  print(test.runtimeType);











}