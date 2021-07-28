import 'package:flutter/material.dart';


class AfterLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),),
    );
  }
}
