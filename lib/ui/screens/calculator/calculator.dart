import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/ui/screens/calculator/caculator_button.dart';

class Calculator extends StatefulWidget {
  static String routeName = "Calculator";

  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State {
  String resultText = "0";
  String operator = "";
  String lhs = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  resultText,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "7",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "8",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "9",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "X",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "4",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "5",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "6",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "-",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "1",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "2",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "3",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "+",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: ".",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "0",
                  onClick: onDigitClick,
                ),
                CalculatorButton(
                  digit: "=",
                  onClick: onEqualClick,
                ),
                CalculatorButton(
                  digit: "/",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onEqualClick(_) {
    resultText = calculate(lhs, operator, resultText);
    operator = "";
    lhs = "";
    setState(() {});
  }

  void onDigitClick(String digit) {
    if (resultText.contains(".") && digit == ".") {
      return;
    }
    if (resultText == "0") {
      resultText = "";
    }
    resultText += digit;
    setState(() {});
  }

  void onOperatorClick(String newOperator) {
    if (operator.isEmpty) {
      lhs = resultText;
    } else {
      lhs = calculate(lhs, operator, resultText);
    }
    resultText = "";
    operator = newOperator;
    setState(() {});
    print("Lhs: $lhs, operator: $operator");
  }

  String calculate(String lhs, String operator, String rhs) {
    if (operator == "+") {
      return (double.parse(lhs) + double.parse(rhs)).toString();
    } else if (operator == "-") {
      return (double.parse(lhs) - double.parse(rhs)).toString();
    } else if (operator == "X") {
      return (double.parse(lhs) * double.parse(rhs)).toString();
    } else {
      return (double.parse(lhs) / double.parse(rhs)).toString();
    }
  }
}
