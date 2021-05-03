import 'package:rxdart/rxdart.dart';
import './vadlitors.dart';

class Bloc extends Object with Validators {
  // you can make variables of any type like int, list, string
  // by specicfying the variable type in angle brackets <>

  // Behaviour subject is equivalent to StreamControllers
  final _title = BehaviorSubject<String>();
  final _body = BehaviorSubject<String>();
  final _notes = BehaviorSubject<List<String>>();

  Stream<String> get title => _title.stream.transform(validateTitle);
  Stream<String> get body => _body.stream.transform(validateBody);

  Function(String) get changeTitle => _title.sink.add;
  Function(String) get changeBody => _body.sink.add;

  dispose() {
    _title.close();
    _body.close();
    _notes.close();
  }
}
