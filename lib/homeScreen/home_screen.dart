import 'package:flutter/material.dart';

import 'list_makanan.dart';
import '../models/daftar_makanan.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isSelected = TextStyle(
    color: Color.fromRGBO(0, 77, 64, 1),
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  var _notSelected = TextStyle(
    color: Colors.grey[600],
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  var _buah;
  var _sayur;
  var _daging;
  var _all;

  final TextEditingController pencarian = TextEditingController();
  // final List<Container> myList = List.generate(20, (index) {
  //   return Container(
  //       child: Column(
  //     children: [Image.asset('assets/images.tomat'), Text('Tomat')],
  //   ));
  // });
  @override
  void initState() {
    pencarianMakanan = daftarMakanan;
    _all = _isSelected;
    _buah = _notSelected;
    _sayur = _notSelected;
    _daging = _notSelected;
    super.initState();
  }

  void filterMakanan(String enteredKeyword) {
    List<DaftarMakanan> result = [];
    if (enteredKeyword.isEmpty) {
      result = daftarMakanan;
    } else {
      result = daftarMakanan
          .where((element) =>
              element.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      pencarianMakanan = result;
    });
  }

  void filterCategory(String keyword) {
    List<DaftarMakanan> filter = [];
    if (keyword == "semua") {
      filter = daftarMakanan;
    } else {
      filter = daftarMakanan
          .where((element) => element.kategori == keyword)
          .toList();
    }

    setState(() {
      pencarianMakanan = filter;
      switch (keyword) {
        case 'buah':
          _buah = _isSelected;
          _all = _notSelected;
          _daging = _notSelected;
          _sayur = _notSelected;
          break;
        case 'sayur':
          _sayur = _isSelected;
          _all = _notSelected;
          _daging = _notSelected;
          _buah = _notSelected;
          break;
        case 'daging':
          _daging = _isSelected;
          _all = _notSelected;
          _buah = _notSelected;
          _sayur = _notSelected;
          break;
        default:
          _all = _isSelected;
          _daging = _notSelected;
          _buah = _notSelected;
          _sayur = _notSelected;
          break;
      }
    });
  }

  // Logika Filter pencarian : membuat sebuah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 234,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 66, left: 20, right: 20),
              color: Color.fromRGBO(0, 77, 64, 1),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/iconFC.png',
                      height: 43,
                      width: 125,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 35),
                    child: TextField(
                      controller: pencarian,
                      onChanged: (value) => filterMakanan(value),
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
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 77, 64, 1)),
                              borderRadius: BorderRadius.circular(10.0)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(0, 77, 64, 1)),
                              borderRadius: BorderRadius.circular(10.0)),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.search, color: Colors.grey[600])),
                          hintText: "Temukan makanan anda",
                          hintStyle: TextStyle(color: Colors.grey[600])),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    // color: Colors.lightGreen,
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              filterCategory('semua');
                            },
                            child: Text(
                              'Semua',
                              style: _all,
                            )),
                        TextButton(
                            onPressed: () {
                              filterCategory('buah');
                            },
                            child: Text(
                              'Buah',
                              style: _buah,
                            )),
                        TextButton(
                            onPressed: () {
                              filterCategory('sayur');
                            },
                            child: Text(
                              'Sayur',
                              style: _sayur,
                            )),
                        TextButton(
                          onPressed: () {
                            filterCategory('daging');
                          },
                          child: Text(
                            'Daging',
                            style: _daging,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridMakanan(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
