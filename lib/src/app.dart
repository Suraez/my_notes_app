import 'package:flutter/material.dart';
import './Models/note.dart';
import 'package:http/http.dart';
import 'dart:convert';

// custom imports
import 'Pages/home.dart';
import 'Pages/new_note.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Note> _notes = [];

  var _counter = 0;

  void _addNote(BuildContext context) {
    _counter++;

    // commented for now
    // var response = await get(
    //     Uri.parse('https://jsonplaceholder.typicode.com/posts/$_counter'));
    // var note = Note.fromJSON(json.decode(response.body));
    // setState(() {
    // _notes.add(note);
    // });
    Navigator.pushNamed(context, '/addnewnote');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(_notes, _addNote),
        '/addnewnote': (context) => NewNote(),
      },
    );
  }
}
