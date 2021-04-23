import 'package:flutter/material.dart';

class NoteItemWidget extends StatelessWidget {
  var note;
  final Animation animation;
  final VoidCallback onClicked;
  NoteItemWidget({this.note, this.animation, this.onClicked});
  @override
  Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 8.0),
            ),
            child: Column(
              children: <Widget>[
                noteBuilder(note["title"], note["_id"]),
                Text(note["body"])
              ],
            ));
      }

      Widget noteBuilder (noteTitle, id) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(noteTitle,
                  style: TextStyle(
                    color: Colors.blue[200],
                    fontWeight: FontWeight.bold,
                  ))),
          ElevatedButton(
            onPressed: onClicked,
            child: Icon(Icons.delete),
          )
        ],
      ),
    );
}
