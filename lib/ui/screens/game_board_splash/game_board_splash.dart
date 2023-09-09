import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/models/game_board_args.dart';
import 'package:sat_flutter_basics/ui/screens/game_board/game_board.dart';

class GameBoardSplash extends StatelessWidget {
  static String routeName = "game_board_splash";
  String player1Name = "";
  String player2Name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GameBoardSplash"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                onChanged: (text) {
                  player1Name = text;
                },
                decoration: InputDecoration(labelText: "Player1"),
              )),
          Container(
              margin: EdgeInsets.all(8),
              child: TextField(
                onChanged: (text) {
                  player2Name = text;
                },
                decoration: InputDecoration(
                  labelText: "Player2",
                ),
              )),
          Spacer(),
          Container(
              margin: EdgeInsets.all(12),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, GameBoard.routeName,
                        arguments: GameBoardArgs(
                            player1Name: player1Name,
                            player2Name: player2Name));
                  },
                  child: Text("Statrt"))),
        ],
      ),
    );
  }
}
