import 'dart:async';

void main() {

  // Stream
  final controller = StreamController();
  // final stream = controller.stream; // 단일 스트림
  final stream = controller.stream.asBroadcastStream(); // 여러개의 스트림을 사용할 때

  // 펑셔널 프로그래밍 가능
  // 데이터 들어오는 순간에 바로 변형을 주거나 데이터를 다룰 수 있다.
  stream.where((event) => event % 2 == 0).listen((val) {
    print("Listener1 : $val");
  });

  stream.where((event) => event % 2 == 1).listen((val) {
    print("Listener2 : $val");
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);

}

