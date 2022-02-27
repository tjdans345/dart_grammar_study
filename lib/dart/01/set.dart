void main() {
  // Set
  // Set 은 Map 이랑 많이 비슷하다.
  // List 는 중복 값이 들어갈 수 있다. / Set 은 중복값을 넣을 수 없다.

  final Set<String> names = {"코드 팩토리", "블랙 핑크", "블랙 핑크"};

  print(names);
  names.add("제니");

  print(names);

  // 해당 Set 에 값이 존재하는지 안하는지 확인하는 메서드
  print(names.contains("창모"));
  print(names.contains("코드 팩토리"));
}
