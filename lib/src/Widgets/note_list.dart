import 'package:flutter/material.dart';
import '../Models/note.dart';

class NoteList extends StatelessWidget {
  List<Note> notes = [];
  NoteList(this.notes);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 8.0
              ),),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    notes[index].title,
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ),
                Text(notes[index].body)
              ],
            ));
      },
    );
  }
}
