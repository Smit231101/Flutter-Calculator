import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firstNum = 0;
  int secondNum = 0;
  String history = "";
  String textToDisplay = "";
  String res = "";
  String operation = "";

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
      history = "";
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-" + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "X" ||
        btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      secondNum = int.parse(textToDisplay);
      if (operation == "+") {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "-") {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "X") {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == "/") {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Flutter Calculator",
            style: TextStyle(fontSize: 21, color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Color(0xFF28527a),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Color(0x66FFFFFF),
                    ),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                ),
              ),
              alignment: Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "AC",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "C",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "<",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "/",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "9",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "8",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "7",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "X",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "6",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "5",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "4",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "+",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "3",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "2",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "1",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "-",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "+/-",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "0",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "00",
                  fillColor: 0xFF8ac4d0,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
                CalculatorButton(
                  callBack: btnOnClick,
                  text: "=",
                  fillColor: 0xFFf4d160,
                  textColor: 0xFF000000,
                  textSize: 24,
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
