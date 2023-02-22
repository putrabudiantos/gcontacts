import 'package:flutter/material.dart';
import 'kontakdata.dart';
import 'tabkontak.dart';

// class GetData {
//   List<Map<String, String>>? getdata;
//   GetData({required this.getdata});
// }

class DetailKontak extends StatelessWidget {
  const DetailKontak({super.key});

  // Map<String, String>? getdata;

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 38),
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.red,
                  child: Text(
                    '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 38),
                const Text(
                  'Aku',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.call_outlined),
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
                              icon: const Icon(Icons.chat_outlined),
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
                              icon:
                                  const Icon(Icons.video_camera_front_outlined),
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
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.amber.shade100),
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Info Kontak',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  const SizedBox(width: 8),
                                  const Icon(
                                    Icons.call,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(width: 100),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        '081237131687',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      SizedBox(height: 2),
                                      Text('Mobile',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                          ))
                                    ],
                                  ),
                                  const SizedBox(width: 118),
                                  const Icon(
                                    Icons.chat,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Pesan',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '081237131687',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Panggilan Suara',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '081237131687',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Panggian Video',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    '081237131687',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
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
        ),
      ),
    );
  }
}
