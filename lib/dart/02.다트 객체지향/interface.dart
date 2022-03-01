void main() {

  BoyGroup bts = new BoyGroup("BTS");
  GirlGroup redvelvet = new GirlGroup("레드 벨벳");

  bts.sayName();


}

// interface
// 다트에서는 클래스를 사용한다
// 해당 필드와 메서드를 강제할 때 인터페이스를 사용한다 -> 강제로 시그니쳐를 맞추도록 하는 역할
// 반드시 어떤 기능은 이 인터페이스를 사용해라고 미리 지정해두는 것
// 인스턴스화 못하게 abstract 를 사용해서 사전에 막아준다.
// abstract -> 추상화 시켜줌 , 그리고 메서드의 바디부분을 생략 가능하다.
abstract class IdolInterface {

  String name;

  IdolInterface(
      this.name
      );

  // 함수안에는 아무것도 작성하지 않는다
  // 인스턴스로 만들 때 사용하는게 아니라
  // 다른 클래스를 만들 때 인터페이스를 사용한다
  void sayName();
}

class BoyGroup implements IdolInterface{
  String name;
  BoyGroup(this.name);
  void sayName(){
    print("제 이름은 $name 입니다.");
  }
}

class GirlGroup implements IdolInterface{
  String name;
  GirlGroup(this.name);
  void sayName(){}
}