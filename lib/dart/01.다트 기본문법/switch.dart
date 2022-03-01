
void main() {

  // switch 문
  int number = 1;

  switch(number) {
    case 1:
      print("1입니다");
      break; // 브레이크 안해주면 다 실행된다.

  // 조건실행문과 break 없이 사용하면 or 논리연산자처럼 사용 가능
    case 3:
    case 5:
      print("3 또는 5입니다.");
      break;

    default:
      print("이건 뭐고");
      break;
  }


}