import 'package:flutter/material.dart';

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
      body: Container(
        child: Column(
          children: [
            Text(
                data["title"],
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
            ),
            Text(data["body"]),
          ],
        ),
      ),
    );
  }
}
