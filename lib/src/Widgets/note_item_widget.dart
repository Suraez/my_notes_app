import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoteItemWidget extends StatelessWidget {
  var note;
  final Animation animation;
  final VoidCallback onClicked;
  NoteItemWidget({this.note, this.animation, this.onClicked});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/singlenote', arguments: {
            'title': note['title'],
            'body': note['body'],
            'id': note['_id']
          });
        },
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.all(4.0),
          child: Card(
            color: Colors.lightBlue,
            child: ListTile(
              leading: Icon(Icons.arrow_right, color: Colors.white,),
              title: Text(
                note["title"],
                style: TextStyle(color: Colors.white,),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete_outline_outlined),
                onPressed: onClicked,
                color: Colors.redAccent[700],
              ),
            ),
          ),
        ));
  }
}
