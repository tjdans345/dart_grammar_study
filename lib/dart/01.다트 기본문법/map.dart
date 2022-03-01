
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

  Map<String, bool> isHarryPotterCharater = {
    "Harry Potter" : true,
    "Ron weasley" : true,
    "창모" : false
  };
  print(isHarryPotterCharater);
  
  // 맵에 값 추가하기
  isHarryPotterCharater.addAll({
    "Spiderman" : false
  });
  print(isHarryPotterCharater);

  // 맵에 키값으로 벨류 값 들고오기
  print(isHarryPotterCharater["창모"]);

  // 맵에 키값으로 새로운 값 추가하기
  isHarryPotterCharater["헐크"] = false;
  print(isHarryPotterCharater);

  // 맵에 키값으로 값 변경하기
  isHarryPotterCharater["헐크"] = true;
  print(isHarryPotterCharater);

  print("---------------");
  // 맵에 키값으로 값 삭제하기
  isHarryPotterCharater.remove("Spiderman");
  print(isHarryPotterCharater);

  // 맵에서 모든 키 값만 들고올기
  print(isHarryPotterCharater.keys);

  // 맵에서 모든 벨류 값만 들고올기
  print(isHarryPotterCharater.values);

}
