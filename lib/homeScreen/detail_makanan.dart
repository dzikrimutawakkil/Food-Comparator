import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/daftar_makanan.dart';

class DetailMakanan extends StatelessWidget {
  final DaftarMakanan makanan;
  const DetailMakanan({Key? key, required this.makanan}) : super(key: key);
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(makanan.imageAsset),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  child: Text(
                    makanan.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
