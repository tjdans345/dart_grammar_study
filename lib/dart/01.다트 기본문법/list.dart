void main() {

  // List
  // 리스트
  // <>안에 넣을 타입을 정의해준다 (제네릭)
  List<String> blackPint = ["제니", "지수", "로제", "리사"];
  List<int> numbers = [1,2,3,4,5];

  print(blackPint);
  print(numbers);

  print("------------------------");
  // 리스트는 인덱스를 사용해서 특정 값을 가져온다.
  print(blackPint[1]);
  print(numbers[2]);

  print("------------------------");
  // 리스트 타입(클래스)에서 사용할 수 있는 메서드
  print(blackPint.length);
  // 리스트 값 추가
  blackPint.add("메테오");
  print(blackPint);
  // 리스트에서 해당 값 삭제
  blackPint.remove("메테오");
  print(blackPint);
  print(blackPint.indexOf("로제")); // 찾는 단어의 인덱스 반환

}