import 'dart:convert';
import 'dart:async';

// Initializing a stream controller
StreamController<String> controller = StreamController<String>();

// Creating a new stream through the controller
Stream<String> stream = controller.stream;

void main() {

	// Setting up a subscriber to listen for any events sent on the stream
	StreamSubscription<String> subscriber = stream.listen((String data) {
		print(data);
	   },
	     onError: (error) {
		     print(error);
	   },
	     onDone: () {
		     print('Stream Fechado!');
	   });

	// Adding a data event to the stream with the controller
	controller.sink.add('Evento com texto!');

	// Adding an error event to the stream with the controller
	controller.addError('Error!');

	// Closing the stream with the controller
	controller.close();

}
