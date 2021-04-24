import 'package:flutter/material.dart';
import '../Widgets/note_list.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List notes;
  Function addNote;
  var res;
  Home(this.notes, this.addNote, this.res);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Notes')),
      ),
      body: res != null
          ? NoteList(notes)
          : Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => addNote(context),
      ),
      bottomNavigationBar: Text('Developed by Suraj'),
    );
  }
}
