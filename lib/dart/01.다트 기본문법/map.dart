
void main() {

  // Map
  // 맵은 Key 와 Value 로 이루어져 있다.
  // 맵은 Key 값을 통해 Value 값을 찾는다.
  Map<String, String> dictionary = {
    "Harry Potter" : "해리포터",
    "Ron weasley" : "론 위즐리",
    "Hermione Granger" : "헤리미온느 그레인저"
  };

  print(dictionary);

  Map<String, bool> isHarryPotterCharacter = {
    "Harry Potter" : true,
    "Ron weasley" : true,
    "창모" : false
  };
  print(isHarryPotterCharacter);
  
  // 맵에 값 추가하기
  isHarryPotterCharacter.addAll({
    "Spiderman" : false
  });

  print(isHarryPotterCharacter);

  // 맵에 키값으로 벨류 값 들고오기
  print(isHarryPotterCharacter["창모"]);

  // 맵에 키값으로 새로운 값 추가하기
  isHarryPotterCharacter["헐크"] = false;
  print(isHarryPotterCharacter);

  // 맵에 키값으로 값 변경하기
  isHarryPotterCharacter["헐크"] = true;
  print(isHarryPotterCharacter);

  print("---------------");
  // 맵에 키값으로 값 삭제하기
  isHarryPotterCharacter.remove("Spiderman");
  print(isHarryPotterCharacter);

  // 맵에서 모든 키 값만 들고올기
  print(isHarryPotterCharacter.keys);

  // 맵에서 모든 벨류 값만 들고올기
  print(isHarryPotterCharacter.values);

}
