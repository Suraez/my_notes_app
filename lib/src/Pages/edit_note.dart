import 'package:flutter/material.dart';
import 'package:my_notes/src/Widgets/footer.dart';
// import 'package:http/http.dart';

// ignore: must_be_immutable
class EditNote extends StatelessWidget {
  TextEditingController titleField;
  TextEditingController bodyField;

  Function editNoteHandler;

  //stores all the data of note passed to it from single note widget
  Map data = {};


  EditNote(this.editNoteHandler);

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    titleField = TextEditingController(text: data["title"]);
    bodyField = TextEditingController(text: data["body"]);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.green[200],
        title: Text('Edit Note'),
      ),
      body: editNoteForm(context),
      bottomNavigationBar: Footer(),
    );
  }

  Widget editNoteForm(context) {
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
      child: Text('Edit Note'),
      onPressed: () => editNoteHandler(context, titleField.text, bodyField.text, data["id"]),
    );
  }
}
