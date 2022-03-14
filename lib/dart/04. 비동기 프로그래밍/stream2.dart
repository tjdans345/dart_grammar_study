import 'dart:async';

void main() {

  // stream 또한 비동기 프로그래밍이다.
  // calculate(2).listen((event) {
  //   print("calculate(2) : $event");
  // });
  //
  // calculate(4).listen((event) {
  //   print("calculate(4) : $event");
  // });

  playAllStream().listen((event) {print(event);});

}

// Future 의 await 처럼 쓰기 위한 방법
Stream<int> playAllStream() async* {
  // yield* 을 사용하면 해당 스트림의 값을 다 들고 올 때 까지 기다린다.
  yield* calculate(1);
  yield* calculate(1000);
}

// 함수로 스트리밍 사용하기;
// Stream 은 async 뒤에 * 을 붙여준다.
Stream<int> calculate(int number) async* {
  for(int i =0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}
