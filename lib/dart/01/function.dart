// void - 공허
void main() {

  // 함수
  // 함수는 ㄴ반복되는 로직(코드)를 한번만 작성함으로써 재활용 가능하게 해준다

  // 함수 호출
  int sum = addNumbers3(2, 7 , 10);
  addNumbers2(x: 10, z: 20, y: 30);
  addNumbers4(10, y: 20, z: 30);
  print("썸입니다. $sum");
}

// 세개의 숫자 (x, y, z)를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument - 매개변수
// positional parameter - 순서가 중요한 파라미터
// optional parameter - 있어도 되고 없어도 되는 파라미터 -> 대괄호를 사용해서 사용한다 하지만 안넣어도 되는 값이면 nullable 타입으로 바꾸어 준다.
// optional parameter - nullable 타입을 안쓰려면 초기값을 넣어주면 된다.
// void 생략 가능
addNumbers(int x,[int? y, int? z]) {

  int sum = x + y! + z!; // !를 사용해서 null 타입이 절대 안들어온다고 명시해주어도 된다.

  print("x : $x");
  print("y : $y");
  print("z : $z");

  if(sum % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

// named parameter - 이름이 있는 파라미터이고 순서가 중요하지 않다.
// {}를 사용한다
addNumbers2({
  int? x, // required 를 사용하지 않은 파라미터(optional parameter 처럼 사용)는 nullable 타입으로 해주거나 아니면 초기값을 넣어준다
  // int x = 0,
  required int y, // required 는 무조건 필요하다는 의미
  required int z,
}) {
  int sum = x! + y + z; // !를 사용해서 null 타입이 절대 안들어온다고 명시해주어도 된다.

  print("x : $x");
  print("y : $y");
  print("z : $z");

  if (sum % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

// 값을 반환할 때는 함수앞에 반환하는 타입을 명시해줘야한다.
int addNumbers3(int x,int y, int z) {

  int sum = x + y + z; // !를 사용해서 null 타입이 절대 안들어온다고 명시해주어도 된다.

  print("x : $x");
  print("y : $y");
  print("z : $z");

  if(sum % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }

  return sum;
}

// named parameter 와 positional parameter 같이 사용 가능
addNumbers4(int x, {
  // int x = 0, // required 를 사용하지 않은 변수는 nullable 타입으로 해주거나 아니면 초기값을 넣어준다
  required int y, // required 는 무조건 필요하다는 의미
  required int z,
}) {
  int sum = x + y + z; // !를 사용해서 null 타입이 절대 안들어온다고 명시해주어도 된다.

  print("x : $x");
  print("y : $y");
  print("z : $z");

  if (sum % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

// 화살표 함수
// 화살표 뒤가 반환 되는 값이다.
int addNumbers5(int x, {required int y,required int z}) => x + y + z;