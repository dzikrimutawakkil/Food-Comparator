import 'package:flutter/material.dart';

import '../models/daftar_makanan.dart';
import 'coba.dart';
import 'headerSearchScreen.dart';

class SearchFoodCompare extends StatefulWidget {
  SearchFoodCompare({Key? key}) : super(key: key);

  @override
  _SearchFoodCompareState createState() => _SearchFoodCompareState();
}

class _SearchFoodCompareState extends State<SearchFoodCompare> {
  late DaftarMakanan makanan1;
  late DaftarMakanan makanan2;
  String hasilPencarian1 = ' ';
  String hasilPencarian2 = ' ';

  var _isFound =
      TextStyle(color: Colors.green, fontWeight: FontWeight.w400, fontSize: 14);

  var _notFound =
      TextStyle(color: Colors.red, fontWeight: FontWeight.w400, fontSize: 14);

  var styleHasilPencarian1;
  var styleHasilPencarian2;

  @override
  void initState() {
    String hasilPencarian1 = ' ';
    String hasilPencarian2 = ' ';
    styleHasilPencarian1 = _notFound;
    styleHasilPencarian2 = _notFound;
    super.initState();
  }

  CariMakanan1(String enteredKeyword) {
    List<DaftarMakanan> result = [];
    result = daftarMakanan
        .where((element) =>
            element.name.toLowerCase() == (enteredKeyword.toLowerCase()))
        .toList();
    if (result.length == 1) {
      makanan1 = result[0];
      print(makanan1.name);
    }

    setState(() {
      if (result.length == 1) {
        hasilPencarian1 = '*Data ditemukan';
        styleHasilPencarian1 = _isFound;
      } else {
        hasilPencarian1 = '*Data tidak ditemukan';
        styleHasilPencarian1 = _notFound;
      }
    });
  }

  CariMakanan2(String enteredKeyword) {
    List<DaftarMakanan> result = [];
    result = daftarMakanan
        .where((element) =>
            element.name.toLowerCase() == (enteredKeyword.toLowerCase()))
        .toList();
    if (result.length == 1) {
      makanan2 = result[0];
      print(makanan2.name);
    }

    setState(() {
      if (result.length == 1) {
        hasilPencarian2 = '*Data ditemukan';
        styleHasilPencarian2 = _isFound;
      } else {
        hasilPencarian2 = '*Data tidak ditemukan';
        styleHasilPencarian2 = _notFound;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            // headSearchCompare(),
            headSearchCompare(),
            Container(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50, bottom: 8, left: 8),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Makanan 1',
                              style: TextStyle(
                                  color: Color.fromRGBO(36, 89, 83, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16)))),
                  Container(
                    child: TextField(
                      // controller: pencarian,
                      onChanged: (value) => CariMakanan1(value),
                      showCursor: true,
                      cursorColor: Colors.grey[600],
                      style: TextStyle(
                        color: Color.fromRGBO(0, 77, 64, 1),
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                          fillColor: Color.fromRGBO(234, 239, 238, 1),
                          filled: true,
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(221, 226, 225, 1)),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(221, 226, 225, 1)),
                              borderRadius: BorderRadius.circular(10.0)),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.search, color: Colors.grey[600])),
                          hintText: "Temukan makanan anda",
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5, left: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('$hasilPencarian1',
                            style: styleHasilPencarian1),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Text(
                        'VS',
                        style: TextStyle(
                            color: Color.fromRGBO(0, 77, 64, 1),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      )),
                  Container(
                    child: Column(
                      children: [
                        Container(
                            margin:
                                EdgeInsets.only(top: 15, bottom: 8, left: 8),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text('Makanan 2',
                                    style: TextStyle(
                                        color: Color.fromRGBO(36, 89, 83, 1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)))),
                        Container(
                          child: TextField(
                            // controller: pencarian,
                            onChanged: (value) => CariMakanan2(value),
                            showCursor: true,
                            cursorColor: Colors.grey[600],
                            style: TextStyle(
                              color: Color.fromRGBO(0, 77, 64, 1),
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 8),
                                fillColor: Color.fromRGBO(234, 239, 238, 1),
                                filled: true,
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(221, 226, 225, 1)),
                                    borderRadius: BorderRadius.circular(10.0)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromRGBO(221, 226, 225, 1)),
                                    borderRadius: BorderRadius.circular(10.0)),
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search,
                                        color: Colors.grey[600])),
                                hintText: "Temukan makanan anda",
                                hintStyle: TextStyle(color: Colors.grey[600])),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 5, left: 5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('$hasilPencarian2',
                                  style: styleHasilPencarian2),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(top: 30, bottom: 58),
                    width: 296,
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(36, 89, 83, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CompareResult(
                                      makanan1: makanan1, makanan2: makanan2)));
                          // CompareResult(makanan1: makanan1, makanan2: makanan2);
                        },
                        child: Text('Bandingkan',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 16))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
