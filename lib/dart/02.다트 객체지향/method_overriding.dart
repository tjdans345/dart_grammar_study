void main() {
  TimeTwo tt = TimeTwo(3);
  print(tt.calculate());

  TimeFour tf = TimeFour(5);
  print(tf.calculate());
}

// method - 함수라는 의미이다 -> 클래스 안에 있는 함수를 메서드라고 한다
// override - 덮어 쓴다는 의미이다.(우선시하다)
class TimeTwo {
  final int number;

  TimeTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

// override 드가자~~
class TimeFour extends TimeTwo {
  TimeFour(int number) : super(number);

  // @override
  // int calculate() {
  //   return super.number * 4;
  // }

// 부모클래스의 메서드는 건들지 않고 오버라이드 하기
  @override
  int calculate() {
    return super.calculate() * 2;
  }
}
