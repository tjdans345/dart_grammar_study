
void main() {

  // type def
  // 함수랑 굉장히 비슷하다. 하지만 함수의 바디가 없다.

  // 함수를 넣어줄 수 있다
  Operation operation = add;

  int result = operation(10, 20, 30);


  // 함수표현식도 가능하지만 return 은 못해준다.
  // var test = () => print("하이");
  // test();
  // var test2 = (a, b) => {
  //   print(a+b)
  // };
  // test2(1,3);


}

// 시그니쳐라고 한다.
typedef Operation = int Function(int x, int y, int z);

// 더하기
// typedef 를 사용하려면 typedef(시그니쳐) 의 리턴타입과 파라미터가 완전히 일치해야한다!
int add(int x, int y, int z) => x + y + z;

// 빼기
int subtract(int x, int y, int z) => x - y - z;