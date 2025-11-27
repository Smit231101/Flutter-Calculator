import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final textColor;
  final double textSize;
  final Function callBack;

  const CalculatorButton({
    super.key,
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width: 70,
        height: 70,
        child: TextButton(
          onPressed: () => callBack(text),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(fillColor)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: textSize, color: Color(textColor)),
            ),
          ),
        ),
      ),
    );
  }
}
