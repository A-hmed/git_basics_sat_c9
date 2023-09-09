import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/models/home_item_dm.dart';
import 'package:sat_flutter_basics/ui/screens/magazines_screen/home_item.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";
  Color purple = Color(0xff852bbb);
  List<HomeItemDM> items = [
    HomeItemDM(title: "car", imagePath: "assets/images/car.jpg"),
    HomeItemDM(title: "health", imagePath: "assets/images/health.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App bar",
          style: TextStyle(color: Colors.yellow, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    color: purple,
                    child: Text(
                      "Magazine",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              Expanded(
                flex: 5,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    color: purple,
                    child: Text("News",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white))),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) => HomeItem(model: items[index])),
          )
        ],
      ),
    );
  }
}
