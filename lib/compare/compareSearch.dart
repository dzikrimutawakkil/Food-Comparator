import 'package:flutter/material.dart';

import '../models/daftar_makanan.dart';

class CompareScreen extends StatefulWidget {
  CompareScreen({Key? key}) : super(key: key);

  @override
  _CompareScreenState createState() => _CompareScreenState();
}

class _CompareScreenState extends State<CompareScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Komparasi Makanan'),
          Container(
            child: Column(
              children: [
                Text('Makanan 1'),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: TextField(
                    // controller: pencarian,
                    // onChanged: (value) => filterMakanan(value),
                    onEditingComplete: () {
                      print('hasil ditemukan');
                    },
                    showCursor: true,
                    cursorColor: Colors.grey[600],
                    style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color.fromRGBO(0, 77, 64, 1)),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color.fromRGBO(0, 77, 64, 1)),
                            borderRadius: BorderRadius.circular(10.0)),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Colors.grey[600])),
                        hintText: "Temukan makanan anda",
                        hintStyle: TextStyle(color: Colors.grey[600])),
                  ),
                )
              ],
            ),
          ),
          Text('VS'),
          Container(
            child: Column(
              children: [
                Text('Makanan 1'),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: TextField(
                    // controller: pencarian,
                    // onChanged: (value) => filterMakanan(value),
                    onEditingComplete: () {
                      print('hasil ditemukan');
                    },
                    showCursor: true,
                    cursorColor: Colors.grey[600],
                    style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color.fromRGBO(0, 77, 64, 1)),
                            borderRadius: BorderRadius.circular(10.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color.fromRGBO(0, 77, 64, 1)),
                            borderRadius: BorderRadius.circular(10.0)),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Colors.grey[600])),
                        hintText: "Temukan makanan anda",
                        hintStyle: TextStyle(color: Colors.grey[600])),
                  ),
                )
              ],
            ),
          ),
          TextButton(onPressed: (){}, child: Text('Compare'))
        ],
      ),
    );
  }
}
