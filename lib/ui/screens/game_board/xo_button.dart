import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  String symbol;
  Function(int) onClick;
  int index;

  XoButton({required this.symbol, required this.onClick, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      child: ElevatedButton(
          onPressed: () {
            onClick(index);
          },
          child: Text(
            "$symbol",
            style: TextStyle(fontSize: 28, color: Colors.black),
          )),
    ));
  }
}
