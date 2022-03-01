enum Gender { MAN, GIRL }

void main() {
  print("---------- Idol ----------");
  Idol apink = Idol(gender: Gender.MAN, name: "에이핑크", membersCount: 5);

  // apink.sayGender();

  print("---------- BoyGroup ----------");
  BoyGroup bts = BoyGroup(Gender.MAN, "BTS", 7);

  bts.sayName();
  bts.sayMale();

  print("---------- GirlGroup ----------");
  GirlGroup wonderGirls = GirlGroup(Gender.GIRL, "원더걸스", 15);
  wonderGirls.sayName();
  wonderGirls.sayFemale();

  // 상속을 하면 자식클래스는 부모클래스 타입이 될 수 도있고,
  // 자기자신(자식) 클래스 타입도 될 수 있다.
  print(apink is Idol);
  print(bts is Idol);
  print(wonderGirls is Idol);
}

// OOP 의 꽃 상속
// 상속 - inheritance
// 상속을 받으면 부모 클래스의 모든 속성을 자식 클래스가 부여 받는다.
// 굉장히 중요한 부분 OOP 코드 퀄리티 좌지우지
class Idol {
  // 성별
  Gender? gender;
  // 이름
  String name;
  // 멤버 숫자
  int membersCount;

  // 네임드 파라미터 사용
  // required -> 필수 값
  Idol({
    required this.gender,
    required this.name,
    required this.membersCount,
  });

  void sayName() {
    print("저는 $name 입니다.");
  }

  void sayMembersCount() {
    print("저희 멤버는 $membersCount명 입니다.");
  }

// void sayGender() {
//   if(this.gender == null) {
//     print("널 이요");
//     return;
//   }
//   this.gender == Gender.GIRL ? print("저희 그룹은 걸그룹 입니다.") : print("저희 그룹은 보이그룹 입니다.");
// }
}

// 상속 사용
class BoyGroup extends Idol {
  BoyGroup(
    Gender gender,
    String name,
    int membersCount,
  ) : super(
      gender: gender,
      name: name,
      membersCount: membersCount);

  void sayMale() {
    print("저희는 남자 아이돌입니다.");
  }
}

class GirlGroup extends Idol {
  GirlGroup(
      Gender gender,
      String name,
      int membersCount
      ) : super(
    gender: gender,
    name: name,
    membersCount: membersCount
  );

  void sayFemale() {
    print("저희는 여자 아이돌입니다.");
  }
}