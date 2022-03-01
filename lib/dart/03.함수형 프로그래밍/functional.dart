import 'dart:math';

void main() {
  List<String> singer = ["창모", "호미들", "릴러말즈", "제네더질라"];

  // print(singer);
  // print(singer.asMap()); // Map 으로 변환
  // print(singer.toSet()); // Set 으로 변환 , 중복 제거
  //
  // Map singerMap = singer.asMap();
  // print(singerMap.keys);
  // print(singerMap.values);
  //
  // Set singerSet = Set.from(singer); // Set 으로 변환
  // print(singerSet.toList()); // 리스트로 변환

  // List 의 map
  // 하나의 형태에서 또 다른 형태로 변경할 때 map 을 많이 사용한다.
  // 새로운 List 를 반환한다.
  var newSinger = singer.map((x) {
    return '래퍼 $x';
  });
  print(newSinger.toList());

  var newSinger2 = singer.map((x) => '래퍼 $x');
  print(newSinger2.toList());

  // [1.jpg, 2.jpg, 3.jpg ...]
  String number = "13579";
  final parsed = number.split("").map((e) => "$e.jpg");
  print(parsed);
  
  // Map 의 map
  Map<String, String> harryPotter = {
    "harryPotter" : "해리포터",
    "harryPotter2" : "해리포터2",
    "harryPotter3" : "해리포터3",
  };

  // Map 을 mapping 할 때 MapEntry 를 이용한다. -> 새로운 Map 을 반환
  // map 을 이용하면 list 로도 변경 가능하다
  final result = harryPotter.map((key, value) => MapEntry("Harry Potter Character $key", "해리포터 캐릭터 $value"));
  final values = harryPotter.values.map((e) => 'HPC $e').toList();

  print(result);
  print(values);

  List<Map<String, String>> people = [
    {
      "name" : "로제",
      "group" : "블랙핑크",
    },
    {
      "name" : "지수",
      "group" : "블랙핑크",
    },
    {
      "name" : "슈가",
      "group" : "BTS",
    },
    {
      "name" : "RM",
      "group" : "BTS",
    },
  ];
  print(people);

  // where 은 조건에 맞는 값들만 새로운 리스트로 만들어서 반환
  print("--------------------------------");
  final newzz =  people.where((element) => element["group"] == "블랙핑크");
  print(newzz);

  // reduce
  // 다 더하고 반환 (문저열도 가능)
  // reduce 는 인덱스 값들과 같은 리턴타입으로 사용해야한다.
  print("--------------------------------");
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

  final result3 = numbers.reduce((prev, next) {
    print("*****************************");
    print("previous : $prev");
    print("next : $next");
    print("total : ${prev + next}");
    return prev + next;
  });

  print(result3);

  // fold
  // fold 에 반환받을 타입을 지정할 수 있다.
  final sum = numbers.fold<int>(0, (previousValue, next) => previousValue + next);
  print(sum);

  // cascading operator
  // ... => 2 개의 리스트를 합치고 새로운 리스트를 반환한다.
  List<int> even = [2,4,6,8];
  List<int> old = [1,3,5,7,8];

  print([...even,...old]);


  List<Map<String, String>> people2 = [
    {
      "name" : "로제",
      "group" : "블랙핑크",
    },
    {
      "name" : "지수",
      "group" : "블랙핑크",
    },
    {
      "name" : "슈가",
      "group" : "BTS",
    },
    {
      "name" : "RM",
      "group" : "BTS",
    },
  ];

  print(people2);

  // Map 은 너무 자유도가 높다 . 오타도 잡아주는게 없고, 또 무슨 키가 들어있는지 바로바로 알 수 없다.
  // 그렇기 때문에 오브젝트(객체)로 만들어준다.
  final parsedPeople = people2.map((e) => Person(e["name"]!, e["group"]!)).toList();

  print(parsedPeople);
}

class Person {
  final String name;
  final String group;

  Person(this.name, this.group);

  @override
  String toString() {
    return "Person(name : $name, group: $group)";
  }
}