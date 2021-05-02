import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Developed by",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'primary',
                    fontSize: 18.0,
                  )),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 22.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  "Suraj Ojha",
                  style: TextStyle(
                    fontFamily: 'primary',
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
