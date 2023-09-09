import 'package:flutter/material.dart';
import 'package:sat_flutter_basics/models/home_item_dm.dart';

class HomeItem extends StatelessWidget {
  HomeItemDM model;

  HomeItem({required this.model});

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
              height: double.infinity,
              child: Image.asset(
                model.imagePath,
                fit: BoxFit.cover,
              )),
          Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              color: Color(0xb3852bbb),
              child: Text(
                model.title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
