
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
  // 타입은 직접 명시해주는게 좋다.
  var test = true;
  print(test.runtimeType);
  // ${} ''안에 변수 사용 가능 but 브라켓('{}') 없어도 된다
  print('$isTrue $number');

  // 06. dynamic 모든 타입 다 가능
  // dynamic 과 var 타입의 차이점은 ?
  // var 타입은 처음 선언한 타입으로 픽스되버린다 -> 수정 불가능!!
  // dynamic 타입은 처음 선언타입이 아닌 타입으로도 변수 값 재할당 가능
  dynamic name31 = "메테오";
  print (name31);









}