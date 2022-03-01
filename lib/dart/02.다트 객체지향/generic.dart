
void main() {

  Lecture<String> lecture1 = Lecture(123, "lecture");

  lecture1.printIdType();


}

// generic - 타입을 외부에서 받을때 사용!!!!!!!!!!
// generic 여러개 선언 가능!!!
// class Lecture<T, X, Y ...> {
class Lecture<T> {

  final int id;
  final T name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(name.runtimeType);
  }
}
