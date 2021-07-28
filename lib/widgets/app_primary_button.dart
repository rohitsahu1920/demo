import 'package:flutter/material.dart';

class AppPrimaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;

  const AppPrimaryButton({
    Key key,
    @required this.text,
    this.textColor = Colors.white,
    this.bgColor = Colors.black,
    this.borderColor = Colors.black,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15,0,15,0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            bgColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                25,
              ),
              side: BorderSide(
                color: borderColor,
              ),
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
