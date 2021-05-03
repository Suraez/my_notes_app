import 'package:flutter/material.dart';
import 'package:my_notes/src/Widgets/footer.dart';

// ignore: must_be_immutable
class SingleNote extends StatelessWidget {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('My Notes'),
        ),
        body: InkWell(
          onTap: () {
            print('from single_note!');
            Navigator.pushNamed(context, '/editnote', arguments: {
              'title': data["title"],
              'body': data["body"],
              'id': data["id"]
            });
          },
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    data["title"],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  subtitle: Text(data["body"]),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Footer(),
    );
  }
}
