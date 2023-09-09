import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/ui/screens/calculator/calculator.dart';
import 'package:sat_flutter_basics/ui/screens/game_board/game_board.dart';
import 'package:sat_flutter_basics/ui/screens/game_board_splash/game_board_splash.dart';
import 'package:sat_flutter_basics/ui/screens/login/login_screen.dart';
import 'package:sat_flutter_basics/ui/screens/magazines_screen/magzines_screen.dart';
import 'package:sat_flutter_basics/ui/screens/register/register_screen.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
      LoginScreen.routeName: (_) {
        return LoginScreen();
      },
      RegisterScreen.routeName: (_) => RegisterScreen(),
      Calculator.routeName: (_) => Calculator(),
      GameBoard.routeName: (_) => GameBoard(),
      GameBoardSplash.routeName: (_) => GameBoardSplash()
    },
    initialRoute: GameBoardSplash.routeName,
  ));
}
