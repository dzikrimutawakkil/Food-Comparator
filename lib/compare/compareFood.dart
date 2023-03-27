import 'package:flutter/material.dart';

class HasilKomp extends StatefulWidget{
  const HasilKomp({super.key});

  @override
  _KompState createState() => _KompState();
}

class _KompState extends State<HasilKomp>{
  int selectedNavbar = 0;
  final _style1 = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold
  );
  final _style2 = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold
  );

  void gantiSelectedNavBar(int index) {
    setState(() {
      selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Hasil Komparasi',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),//appbar title
          backgroundColor: const Color.fromRGBO(28, 103, 88, 50)//appbar background color
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
                      child: Image.asset(
                        'assets/images/Kentang.jpg',
                        height: 90,
                      ),
                    ),
                    Text('Kentang', style: _style1,),
                  ],
                ),// Kentang
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        'assets/images/Nasi.jpg',
                        height: 90,
                      ),
                    ),
                    Text('Nasi', style: _style1),
                  ],
                )// Nasi
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
                        Text('Double kal', style: _style2),
                        Text('Double kal', style: _style2),
                      ],
                    )
                  ],
                ),// Energi
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Karbohidrat', style: _style2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Double gr', style: _style2,),
                        Text('Double gr', style: _style2,)
                      ],
                    )
                  ],
                ),// Karbohidrat
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Protein', style: _style2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Double gr', style: _style2,),
                        Text('Double gr', style: _style2,)
                      ],
                    )
                  ],
                ),// Protein
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Lemak', style: _style2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Double gr', style: _style2,),
                        Text('Double gr', style: _style2,)
                      ],
                    )
                  ],
                ),// Lemak
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Air', style: _style2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Double gr', style: _style2,),
                        Text('Double gr', style: _style2,)
                      ],
                    )
                  ],
                ),// Air
                Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    Text('Serat', style: _style2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Double gr', style: _style2,),
                        Text('Double gr', style: _style2,)
                      ],
                    )
                  ],
                ),// Serat
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare),
            label: 'Compare',
          ),
        ],
        currentIndex: selectedNavbar,
        selectedItemColor: const Color.fromRGBO(28, 103, 88, 50),
        unselectedItemColor: Colors.grey,
        onTap: gantiSelectedNavBar,
      ),
    );
  }
}