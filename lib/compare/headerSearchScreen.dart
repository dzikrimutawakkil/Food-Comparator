import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 213,
      decoration: BoxDecoration(
          color: Color.fromRGBO(36, 89, 83, 1),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(36.0, 10.0),
              bottomRight: Radius.elliptical(36.0, 10.0))),
      child: Column(children: [
        Text(
          'Komparasi Makanan',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'Pilih dua makanan dan temukan perbandingan nutrisinya',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
        )
      ]),
    );
  }
}
