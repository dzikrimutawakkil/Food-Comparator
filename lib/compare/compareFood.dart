import 'package:flutter/material.dart';
<<<<<<< HEAD

class HasilKomp extends StatefulWidget {
  const HasilKomp({super.key});

  @override
  _KompState createState() => _KompState();
}

class _KompState extends State<HasilKomp> {
  int selectedNavbar = 0;
  final _style1 = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  final _style2 = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
=======
import 'package:food_comparator/models/daftar_makanan.dart';

class HasilKomp extends StatelessWidget{
  final DaftarMakanan makanan1;
  final DaftarMakanan makanan2;
  const HasilKomp({super.key, required this.makanan1, required this.makanan2});
  final _style1 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
  );
  final _style2 = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold
  );
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Hasil Komparasi',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ), //appbar title
          backgroundColor:
              const Color.fromRGBO(28, 103, 88, 50) //appbar background color
          ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(makanan1.imageAsset,
                        height: 90,
                        width: 130,
                      ),
                    ),
<<<<<<< HEAD
                    Text(
                      'Kentang',
                      style: _style1,
                    ),
=======
                    Text(makanan1.name, style: _style1,),
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                  ],
                ), // Kentang
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        makanan2.imageAsset,
                        height: 90,
                        width: 130,
                      ),
                    ),
                    Text(makanan2.name, style: _style1),
                  ],
                ) // Nasi
              ],
            ),
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(16.0)),
                Text('Kandungan Makanan', style: _style2),
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Energi', style: _style2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('${makanan1.kandunganMakanan.energi} Kal', style: _style2),
                        Text('${makanan2.kandunganMakanan.energi} Kal', style: _style2),
                      ],
                    )
                  ],
                ), // Energi
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      'Karbohidrat',
                      style: _style2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
<<<<<<< HEAD
                        Text(
                          'Double gr',
                          style: _style2,
                        ),
                        Text(
                          'Double gr',
                          style: _style2,
                        )
=======
                        Text('${makanan1.kandunganMakanan.karbohidrat} gr', style: _style2,),
                        Text('${makanan2.kandunganMakanan.karbohidrat} gr', style: _style2,)
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                      ],
                    )
                  ],
                ), // Karbohidrat
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      'Protein',
                      style: _style2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
<<<<<<< HEAD
                        Text(
                          'Double gr',
                          style: _style2,
                        ),
                        Text(
                          'Double gr',
                          style: _style2,
                        )
=======
                        Text('${makanan1.kandunganMakanan.protein} gr', style: _style2,),
                        Text('${makanan2.kandunganMakanan.protein} gr', style: _style2,)
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                      ],
                    )
                  ],
                ), // Protein
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      'Lemak',
                      style: _style2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
<<<<<<< HEAD
                        Text(
                          'Double gr',
                          style: _style2,
                        ),
                        Text(
                          'Double gr',
                          style: _style2,
                        )
=======
                        Text('${makanan1.kandunganMakanan.lemak} gr', style: _style2,),
                        Text('${makanan2.kandunganMakanan.lemak} gr', style: _style2,)
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                      ],
                    )
                  ],
                ), // Lemak
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      'Air',
                      style: _style2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
<<<<<<< HEAD
                        Text(
                          'Double gr',
                          style: _style2,
                        ),
                        Text(
                          'Double gr',
                          style: _style2,
                        )
=======
                        Text('${makanan1.kandunganMakanan.air} gr', style: _style2,),
                        Text('${makanan2.kandunganMakanan.air} gr', style: _style2,)
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                      ],
                    )
                  ],
                ), // Air
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text(
                      'Serat',
                      style: _style2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
<<<<<<< HEAD
                        Text(
                          'Double gr',
                          style: _style2,
                        ),
                        Text(
                          'Double gr',
                          style: _style2,
                        )
=======
                        Text('${makanan1.kandunganMakanan.serat} gr', style: _style2,),
                        Text('${makanan2.kandunganMakanan.serat} gr', style: _style2,)
>>>>>>> 8cc0e03a771db2b84c0ec5727ad8f7b073b617b7
                      ],
                    )
                  ],
                ), // Serat
              ],
            )
          ],
        ),
      ),
    );
  }
}
