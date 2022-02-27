
void main() {

  // non-nullable - null이 될 수 없다
  String name = "안녕하세요";
  print(name);
  // name = null; 에러가 떨어진다

  // nullable - null이 될 수 있다. 타입뒤에 ? 사용
  // 해당 타입과 null이 들어갈 수 있다.
  String? name2 = "원더걸스";
  name2 = null;
  print(name2);

  // !는 ? 절대로 null 값이 안들어간다고 명시해주는 것!!
  // 변수뒤에 붙여준다.
  print(name2!);




}