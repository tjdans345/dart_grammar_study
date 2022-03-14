
void main() {

  // final vs const
  // final 과 const 차이
  // final은 빌드타임 때 값을 몰라도 된다.
  // const는 빌드타임 때 값을 알고있어야한다.
  // 빌드 타임이란 ?  : 코드 작성 하고 실행 하면 코드 컴파일 일어남 -> 이진수로 바뀜 (빌드 과정이 일어나는 것) -> 즉 코드 작성하는 순간에 값을 알고 있어야한다

  // 01. final
  // 상수값이 된다 -> 값 변경 x
  // final 사용 하면 var 키워드 생략가능(타입 지워도 된다)
   final String name = "호랭이";
  final  name3 ="야옹이";

  // 02. const
  // const 도 값 변경 x
  // const 사용 하면 var 키워드 생략가능(타입 지워도 된다)
  const String name2 = "메테오";
  const name4 = "메테오2";
  print(name4);

  //정리 완료
}