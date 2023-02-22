import 'package:flutter/material.dart';
import 'kontakdata.dart';
import 'models.dart';
import 'dart:math';
import 'kontakdetail.dart';
import 'kontakbaru.dart';

class KontakList extends StatefulWidget {
  const KontakList({super.key});

  @override
  State<KontakList> createState() => _KontakListState();
}

class _KontakListState extends State<KontakList> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    List<Color> warna = [
      Colors.greenAccent.shade200,
      Colors.redAccent.shade200,
      Colors.pink.shade300,
      Colors.yellow.shade300,
      Colors.blue.shade200,
      Colors.orange.shade300
    ];

    const kondisinomor = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            child: TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KontakBaru()),
                );
              },
              icon: const Icon(
                Icons.person_add_alt,
                color: Colors.black54,
              ),
              label: const Text(
                'Tambah Kontak Baru',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: datakontak.map(
          (e) {
            var warnaacak = warna[random.nextInt(warna.length)];
            return TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      bool kondisi = true;
                      final nomor = e['Mobile Phone'];
                      final nama = e['First Name'];
                      return Scaffold(
                        appBar: AppBar(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          leading: const BackButton(),
                          actions: [
                            IconButton(
                              tooltip: 'Edit',
                              onPressed: () {},
                              icon: const Icon(Icons.edit_outlined),
                            ),
                            IconButton(
                              tooltip: 'Tambah Favorit',
                              onPressed: () {},
                              icon: const Icon(Icons.star_border),
                            ),
                            PopupMenuButton<Text>(
                              tooltip: 'Opsi Lanjutan',
                              itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                    child: const Text('Lihat tautan kontak'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Hapus'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Berbagi'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Tambah Ke Halaman'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Atur Ringtone'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Pindah ke akun lain'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Blokir Kontak'),
                                    onTap: () {},
                                  ),
                                  PopupMenuItem(
                                    child: const Text('Bantuan'),
                                    onTap: () {},
                                  ),
                                ];
                              },
                              elevation: 2,
                            )
                          ],
                        ),
                        body: (nomor != null)
                            ? SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 38),
                                        const CircleAvatar(
                                          radius: 45,
                                          backgroundColor: Colors.red,
                                          child: Icon(
                                            Icons.person_outline,
                                            color: Colors.white,
                                            size: 70,
                                          ),
                                        ),
                                        const SizedBox(height: 38),
                                        Text(
                                          '${nama}',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 27,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(height: 20),
                                        const Divider(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18, right: 18),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                color: Colors.transparent,
                                                child: Column(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                          Icons.call_outlined),
                                                    ),
                                                    const Text('Panggil')
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                color: Colors.transparent,
                                                child: Column(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                          Icons.chat_outlined),
                                                    ),
                                                    const Text('Pesan')
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                color: Colors.transparent,
                                                child: Column(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(Icons
                                                          .video_camera_front_outlined),
                                                    ),
                                                    const Text('Video call')
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const Divider(),
                                        const SizedBox(height: 20),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.amber.shade100),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 316,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Info Kontak',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Row(
                                                        children: [
                                                          const SizedBox(
                                                              width: 8),
                                                          const Icon(
                                                            Icons.call,
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 30),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                nomor,
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                              const SizedBox(
                                                                  height: 2),
                                                              const Text(
                                                                'Mobile',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 20),
                                                          Container(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            color: Colors
                                                                .transparent,
                                                            width: 112,
                                                            child: const Icon(
                                                              Icons.chat,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Row(
                                                        children: [
                                                          Transform.scale(
                                                            scale: 2,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Image.asset(
                                                                  "assets/contoh/whatsappicon-removebg.png"),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                            'Pesan',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            nomor,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Row(
                                                        children: [
                                                          Transform.scale(
                                                            scale: 2,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Image.asset(
                                                                  "assets/contoh/whatsappicon-removebg.png"),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                            'Panggilan Suara',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            nomor,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    TextButton(
                                                      onPressed: () {},
                                                      child: Row(
                                                        children: [
                                                          Transform.scale(
                                                            scale: 2,
                                                            child: IconButton(
                                                              onPressed: () {},
                                                              icon: Image.asset(
                                                                  "assets/contoh/whatsappicon-removebg.png"),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          const Text(
                                                            'Panggian Video',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            nomor,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                            : Container(
                                color: Colors.green,
                                child: const Text('Tidak Ada Data')),
                      );
                    },
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(0),
                elevation: 0,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: warnaacak,
                        child: const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "${e['First Name']}",
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
