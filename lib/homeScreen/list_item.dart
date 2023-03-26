import 'package:flutter/material.dart';
import 'package:food_comparator/models/daftar_makanan.dart';

class ListItem extends StatelessWidget {
  final DaftarMakanan makanan;

  // ignore: use_key_in_widget_constructors
  const ListItem({required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(
                blurRadius: 5.0,
                offset: Offset(0, 3),
                color: Color.fromRGBO(160, 160, 160, 0.984))
          ]),
      child: Column(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            makanan.imageAsset,
            height: 98,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          makanan.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ]),
    );
  }
}
