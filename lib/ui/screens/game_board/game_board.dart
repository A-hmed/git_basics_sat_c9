import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/models/game_board_args.dart';
import 'package:sat_flutter_basics/ui/screens/game_board/xo_button.dart';

class GameBoard extends StatefulWidget {
  static String routeName = "game_board";

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  TextStyle playerNameStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue);

  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int counter = 0;
  bool isOTurn = true;
  int player1Score = 0;
  int player2Score = 0;

  @override
  Widget build(BuildContext context) {
    GameBoardArgs args =
        ModalRoute.of(context)!.settings.arguments as GameBoardArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${args.player1Name}: $player1Score",
                  style: playerNameStyle,
                ),
                Text(
                  "${args.player2Name}: $player2Score",
                  style: playerNameStyle,
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(
                  symbol: board[0],
                  onClick: onButtonClick,
                  index: 0,
                ),
                XoButton(symbol: board[1], onClick: onButtonClick, index: 1),
                XoButton(symbol: board[2], onClick: onButtonClick, index: 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(symbol: board[3], onClick: onButtonClick, index: 3),
                XoButton(symbol: board[4], onClick: onButtonClick, index: 4),
                XoButton(symbol: board[5], onClick: onButtonClick, index: 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(symbol: board[6], onClick: onButtonClick, index: 6),
                XoButton(symbol: board[7], onClick: onButtonClick, index: 7),
                XoButton(symbol: board[8], onClick: onButtonClick, index: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onButtonClick(int index) {
    if (board[index].isNotEmpty) return;
    board[index] = isOTurn ? "o" : "x";

    counter++;
    if (checkWinner(isOTurn ? "o" : "x")) {
      if (isOTurn) {
        player1Score++;
      } else {
        player2Score++;
      }
      resetBoard();
    }
    isOTurn = !isOTurn;
    if (counter == 9) {
      resetBoard();
    }
    setState(() {});
  }

  void resetBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    setState(() {});
  }

  bool checkWinner(String symbol) {
    for (int i = 0; i <= 6; i += 3) {
      if (board[i] == symbol &&
          symbol == board[i + 2] &&
          symbol == board[i + 1]) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i] == symbol &&
          symbol == board[i + 6] &&
          symbol == board[i + 3]) {
        return true;
      }
    }
    if (board[0] == symbol && symbol == board[4] && symbol == board[8]) {
      return true;
    }
    if (board[2] == symbol && symbol == board[4] && symbol == board[6]) {
      return true;
    }
    return false;
  }
}
