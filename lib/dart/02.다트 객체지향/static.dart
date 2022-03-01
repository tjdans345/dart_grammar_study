void main() {

  Employee nari = new Employee("슬기");
  Employee chorong = new Employee("초롱");

}

class Employee {

  // static 은 instance 에 귀속되지 않고 class 에 귀속 된다.
  static String? building; // 알바생이 일하고 있는 건물
  final String name; // 알바생 이름

  Employee(
      this.name
      );

  void printNameAndBuilding() {
    print("제 이름은 $name 입니다. $building 건물에서 근무하고 있습니다.");
  }

  static void printBuilding() {
    print("저는 $building 건물에서 근무중입니다.");
  }

}

