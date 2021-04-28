import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:my_notes/src/Pages/single_note.dart';
import 'dart:convert';

// custom imports
import 'Pages/home.dart';
import 'Pages/new_note.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List _notes;
  final String api = 'https://myflutternoteapp.herokuapp.com/note/all';
  var response;

  final TextEditingController _titleField = TextEditingController();
  final TextEditingController _bodyField = TextEditingController();

  // add new note
  void addNewNoteHandler(BuildContext context) async {
    final String addNoteApi =
        'https://myflutternoteapp.herokuapp.com/note/create';
    var newNote = {"title": _titleField.text, "body": _bodyField.text};
    var response = await post(Uri.parse(addNoteApi), body: newNote);
    print(response.body);
    setState(() {
      _notes.add(json.decode(response.body)["data"]);
      Navigator.pop(context);
    });
  }

  // delete note
  // void deleteNoteHandler(id) async {

  // }

  @override
  void initState() {
    super.initState();
    getAllNotes();
  }

  // getting all notes
  void getAllNotes() async {
    response = await get(Uri.parse(api));
    setState(() {
      _notes = json.decode(response.body)["data"];
      // print(_notes);
    });
  }

  void _addNote(BuildContext context) {
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
        '/': (context) => Home(_notes, _addNote, response),
        '/addnewnote': (context) =>
            NewNote(_titleField, _bodyField, addNewNoteHandler),
        '/singlenote': (context) => SingleNote()
      },
    );
  }
}
