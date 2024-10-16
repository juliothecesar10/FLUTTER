import 'dart:convert';
import 'dart:async';

// Initializing a stream controller for a broadcast stream
StreamController<String> controller = StreamController<String>.broadcast();

// Creating a new broadcast stream through the controller
Stream<String> stream = controller.stream;

void main() {
  // Setting up a subscriber to listen for any events sent on the stream
  StreamSubscription<String> subscriber1 = stream.listen((String data) {
    print('Subscriber1: ${data}');
  }, onError: (error) {
    print('Subscriber1: ${error}');
  }, onDone: () {
    print('Subscriber1: Stream Fechado!');
  });

  // Setting up another subscriber to listen for any events sent on the stream
  StreamSubscription<String> subscriber2 = stream.listen((String data) {
    print('Subscriber2: ${data}');
  }, onError: (error) {
    print('Subscriber2: ${error}');
  }, onDone: () {
    print('Subscriber2: Stream Fechado!');
  });

  // Adding a data event to the stream with the controller
  controller.sink.add('Evento com texto!');

  // Adding an error event to the stream with the controller
  controller.addError('Error!');

  // Closing the stream with the controller
  controller.close();
}
