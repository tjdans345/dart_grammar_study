void main() {
  // 다트에서는 new 생략가능하다
  // Idol blackPink = new Idol("블랙핑크", ["지수", "제니", "리사", "로제"]);
  // Idol blackPink = const Idol("블랙핑크", ["지수", "제니", "리사", "로제"]); // const constructor 사용해야지 cont 사용 가능
  Idol blackPink = Idol.fromList(
      [
        ["지수", "제니", "리사", "로제"],
        "블랙핑크"
      ]
  );

  // 세터 사용
  print(blackPink.firstMember = "창모");
  // 게터 사용
  print(blackPink.firstMember);

  // Idol blackPink2 = Idol.fromList(
  //     [
  //       ["지수", "제니", "리사", "로제"],
  //       "블랙핑크"
  //     ]
  // );

  // const 를 사용해서 인스턴스 만들면 같은 인스턴스임
  // print(blackPink == blackPink2);

  // simply constructor
  // Idol bts = Idol("BTS", ["RM", "진", "슈가"]);

  // named constructor
  Idol bts = Idol.fromList(
    [
      ["RM", "진", "슈가"],
      "BTS"
    ]
  );

  print(bts.firstMember);


}

// Idol Class
// Class 를 정의한다.
// constructor(생성자)
// immutable 프로그래밍 (요새 기법, 한번 선언하면 바꾸지 못하도록 설계)
// getter / setter
// 데이터 가져올 때 / 데이터 바인딩 할 때
// _ 언더바스코어를 사용하면 private 로 만들 수 있다. (클래스도 가능, 변수도 가능, 함수도 가능~~)
// class _Idol { // private 사용 -> private 는 현재 같은 파일안에서만 접근 가능 -> 외부에서 접근 불가능
class Idol {
  // final String name; // immutable -> 값 못바꾸게 final 사용
  // final List<String> members; // immutable -> 값 못바꾸게 final 사용
  //  final String name; // const 사용 하려면 immutable 변수 선언 해야함
  //  final List<String> members; // const 사용 하려면 immutable 변수 선언 해야함
  String name;
  List<String> members;

  // 가장 기본적인 constructor 첫 번째 방법
  // named parameter, positional parameter 사용 가능
  // Idol(String name, List<String> members)
  //     : this.name = name,
  //       this.members = members; // 클래스 안에 값을 넣어준다 : 사용

  // 생성자 오버로딩 가능
  // 생성자 만드는 두 번째 방법
  // simply
  Idol(this.name, this.members);
  // 와... const 로 선언하면 같은 인스턴스가 된다 !!
  // const Idol(this.name, this.members); // const 사용해서 생성자 선언 가능 -> 플러터에서 효율을 올려주는데 도움을 준다??

  // 네임드 컨스트럭터 만드는 방법
  Idol.fromList(List values) :
        this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print("안녕하세요 $name 입니다.");
  }

  void introduce() {
    print(" 저희 멤버는 $members가 있습니다.");
  }

  // getter 는 중괄호만 사용한다.
  // return Type 작성
  String get firstMember {
    return this.members[0];
  }

  // setter
  // immutable 변수에서는 setter 를 사용하지 않는다.
  set firstMember(String name) {
    this.members[0] = name;
  }
}
