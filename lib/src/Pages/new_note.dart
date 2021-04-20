import 'package:flutter/material.dart';

class NewNote extends StatelessWidget {

  void addNewNoteHandler() {
    print('hey let\'s work together');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.green[200],
          title: Text('Add New Note'),
        ),
        body: newNoteForm());
  }

  Widget newNoteForm() {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          titleInput(),
          bodyInput(),
          addNewButton(),
        ],
      ),
    );
  }

  Widget titleInput() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Enter the title here', 
          icon: Icon(Icons.title_outlined),
      ),
    );
  }

  Widget bodyInput() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Enter the body here',
          icon: Icon(Icons.book),
        ),
        maxLines: 4,
      ),
    );
  }

  Widget addNewButton() {
    return ElevatedButton(
      child: Text('Add New Note'),
      onPressed: addNewNoteHandler,
    );
  }
}
