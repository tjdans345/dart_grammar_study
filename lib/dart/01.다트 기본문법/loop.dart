
void main() {

  // for loop
  // for(int i=1; i<=1000; i++) {
  //   print(i);
  // }

  // int total = 0;
  // List<int> numbers = [1,2,3,4,5,6,7,8,9,10];
  // for(int i=0; i < numbers.length; i++) {
  //   total += numbers[i];
  // }
  //
  // print(total);
  //
  // total = 0;
  //
  // // for in loop
  // for(int number in numbers) {
  //   total += number;
  // }
  // print(total);

  // while loop
  // int total = 0;
  //
  // while(total < 10){
  //   total ++;
  // }
  // print(total);

  // do while loop
  // int total = 0;
  // do {
  //   total += 1;
  // } while(total < 10);
  // print(total);

  // while 문 break 사용 가능 / for 문에서도 사용 가능
  // int total = 0;
  // while(total < 10){
  //   total ++;
  //   if(total == 5) {
  //     break; // loop 를 나가라는 의미
  //   }
  // }
  // print(total);

  // continue 사용
  for(int i=0; i <10; i++) {
    if(i == 5) {
      continue; // 현재 루프만 스킵하라는 뜻 -> 5일 때는 다음 스텝으로 넘겨라
    }
    print(i);
  }

  // 정리 완료


}