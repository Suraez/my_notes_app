import 'package:flutter/material.dart';
import 'note_item_widget.dart';
import 'package:http/http.dart';
import 'dart:convert';

// ignore: must_be_immutable
class NoteList extends StatelessWidget {
  final myKey = GlobalKey<AnimatedListState>();

  List notes;
  NoteList(this.notes);

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
        key: myKey,
        initialItemCount: notes.length,
        itemBuilder: (BuildContext context, int index, animation) =>
            buildItem(notes[index], index, animation, notes[index]["_id"]));
  }

  Widget buildItem(note, int index, Animation<double> animation, id) =>
      NoteItemWidget(
        note: note,
        animation: animation,
        onClicked: () => removeNote(index, id),
      );

  void removeNote(int index, id) async{
    final item = notes.removeAt(index);
    var deleteApi = 'https://myflutternoteapp.herokuapp.com/note/delete/$id';
    var response = await delete(Uri.parse(deleteApi));
    if (json.decode(response.body)["success"]) {
      myKey.currentState.removeItem(
      index,
      (context, animation) => buildItem(item, index, animation, id)
    );
    } else {
      print(response.body);
    }
  }
}
