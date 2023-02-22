import 'package:flutter/material.dart';
import 'favorit.dart';
import 'riwayat.dart';
import 'caribar.dart';
import 'tabkontak.dart';
import 'cobalist.dart';
import 'kontakdetail.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Favorit(),
    Riwayat(),
    KontakList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // return const DetailKontak();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 7),
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber.shade100),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const CariBar(),
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.search, color: Colors.grey.shade500),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CariBar()),
                                );
                              },
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            color: Colors.transparent,
                            child: Text(
                              'Cari Kontak',
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_voice_outlined,
                                color: Colors.grey.shade500),
                          ),
                          PopupMenuButton<Text>(
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: const Text('Riwayat Panggilan'),
                                  onTap: () {},
                                ),
                                PopupMenuItem(
                                  child: const Text('Pengaturan'),
                                  onTap: () {},
                                ),
                                PopupMenuItem(
                                  child: const Text('Bantuan dan Feedback'),
                                  onTap: () {},
                                )
                              ];
                            },
                            elevation: 2,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height / 1.28,
                width: MediaQuery.of(context).size.width,
                child:
                    // Image.asset(
                    //     'assets/images/on_boarding_images/on_boarding_image3_final.png'),
                    Center(
                  child: _widgetOptions.elementAt(_selectedIndex),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 2,
        backgroundColor: const Color.fromARGB(255, 148, 121, 23),
        onPressed: () {},
        label: const Text(
          'Dial',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        icon: const Icon(Icons.dialpad_outlined, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber.shade100,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            activeIcon: Icon(Icons.star),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            activeIcon: Icon(Icons.access_time_filled),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            activeIcon: Icon(Icons.group_sharp),
            label: 'Kontak',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 65, 64, 62),
        onTap: _onItemTapped,
      ),
    );
  }
}
