import 'package:flutter/material.dart';
import 'package:my_notes/src/Widgets/footer.dart';
// import 'package:http/http.dart';

// ignore: must_be_immutable
class NewNote extends StatelessWidget {

  final TextEditingController titleField;
  final TextEditingController bodyField;

  Function addNewNoteHandler;

  NewNote(this.titleField, this.bodyField, this.addNewNoteHandler);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.green[200],
        title: Text('Add New Note'),
      ),
      body: newNoteForm(context),
      bottomNavigationBar: Footer(),
    );
  }

  Widget newNoteForm(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          titleInput(),
          bodyInput(),
          addNewButton(context),
        ],
      ),
    );
  }

  Widget titleInput() {
    return TextFormField(
      controller: titleField,
      decoration: InputDecoration(
        labelText: 'Enter the title here',
        icon: Icon(Icons.title_outlined),
      ),
    );
  }

  Widget bodyInput() {
    return Container(
      child: TextFormField(
        controller: bodyField,
        decoration: InputDecoration(
          labelText: 'Enter the body here',
          icon: Icon(Icons.book),
        ),
        maxLines: 4,
      ),
    );
  }

  Widget addNewButton(BuildContext context) {
    return ElevatedButton(
      child: Text('Add New Note'),
      onPressed: () => addNewNoteHandler(context),
    );
  }
}
