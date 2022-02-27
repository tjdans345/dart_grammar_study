
// enum 을 사용하는 이유는
// 정확하게 enum 타입안의 값만 존재한다고 알려주는 것 -> 타입을 강제할 수 있다.
// 오타를 방지할 수 도있다.
enum Status {
  num,
  String,
  boolean
}

void main() {
  // enum
 Status status = Status.String;
 if(status == Status.String) {
   print("스트링입니다.");
 } else if(status == Status.num) {
  print("넘버입니다.");
 } else {
   print("불리언 입니다.");
 }
}