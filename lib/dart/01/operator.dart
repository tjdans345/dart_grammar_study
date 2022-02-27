
void main() {

  int number = 2;

  // %는 나머지를 반환한다.
  print(number % 2);

  number++;
  print(number);
  print(number % 2);

  number--;
  print(number);

  double number2 = 4.0;
  print(number2);
  number2 += 3;
  print(number2);
  number2 *= 3;
  print(number2);

  print("----------------------------------------");
  // null 조건 operator
  double? number3 = 4.0;
  print(number3);

  number3 = null;
  number3 ??= 3.0; // ?? => null 이면 값을 대입해라는 뜻
  print(number3);



}