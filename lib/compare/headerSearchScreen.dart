import 'package:flutter/material.dart';

class headSearchCompare extends StatelessWidget {
  const headSearchCompare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, right: 50),
      height: 200,
      width: 393,
      decoration: BoxDecoration(
          color: Color.fromRGBO(36, 89, 83, 1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(100.0, 30.0),
              bottomRight: Radius.elliptical(100.0, 30.0))),
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 80),
          child: Text(
            'Komparasi Makanan',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text(
            'Pilih dua makanan dan temukan perbandingan nutrisinya!',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 224, 224, 224)),
          ),
        )
      ]),
    );
  }
}
