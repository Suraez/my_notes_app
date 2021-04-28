import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Developed by",
                style: TextStyle(
                  color: Colors.white,
                )),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                "Suraj Ojha",
                style: TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }
}
