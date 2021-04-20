import 'package:flutter/material.dart';
import '../Widgets/note_list.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List notes = [];
  Function addNote;
  Home(this.notes, this.addNote);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Suraj Notes')),
      ),
      body: NoteList(notes),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => addNote(context),
      ),
    );
  }
}
