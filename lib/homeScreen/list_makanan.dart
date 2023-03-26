import 'package:flutter/material.dart';
import 'package:food_comparator/models/daftar_makanan.dart';

import 'detail_makanan.dart';
import 'list_item.dart';

class GridMakanan extends StatefulWidget {
  const GridMakanan({Key? key}) : super(key: key);

  @override
  State<GridMakanan> createState() => _GridMakanan();
}

class _GridMakanan extends State<GridMakanan> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(top: 0, bottom: 20),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 13,
          mainAxisSpacing: 13,
          mainAxisExtent: 140,
        ),
        itemCount: pencarianMakanan.length,
        itemBuilder: ((context, index) {
          final DaftarMakanan makanan = pencarianMakanan[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMakanan(
                  makanan: makanan,
                );
              }));
            },
            child: ListItem(
              makanan: makanan,
            ),
          );
        }));
  }
}
