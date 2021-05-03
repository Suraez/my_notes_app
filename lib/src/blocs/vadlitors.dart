import 'dart:async';

class Validators {
  final validateTitle = StreamTransformer<String, String>.fromHandlers(
    handleData: (title, sink) {
        if (title.length < 5) {
          sink.addError('Title must be of at least 4 chars.');
        } else {
          sink.add(title);
        }
    }
  );

  final validateBody = StreamTransformer<String, String>.fromHandlers(
    handleData: (body, sink) {
      if (body.length > 5){
        sink.add(body);
      } else {
        sink.addError('Body 5 chars');
      }
    }
  );

}
