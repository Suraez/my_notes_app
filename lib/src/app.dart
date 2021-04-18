import 'package:flutter/material.dart';
import './Models/note.dart';
import 'package:http/http.dart';
import 'dart:convert';

// custom imports
import './Widgets/note_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Note> _notes = [];

  var _counter = 0;

  void _addNote() async{
    _counter++;
    var response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/${_counter}'));
    var note = Note.fromJSON(json.decode(response.body));
    setState(() {
    _notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Suraj Notes')),
          ),
          body: NoteList(_notes),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _addNote,
          ),
        ));
  }
}
