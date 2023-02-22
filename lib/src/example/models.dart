import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'dart:math';
import 'callbutton.dart';
import 'kontakdata.dart';

// class GetData {
//   List<? nama = datakontak['First Name'];
//   String? nomor;

//   GetData({this.nama, this.nomor});
// }

class ModelsKontak extends StatefulWidget {
  const ModelsKontak({super.key});

  @override
  State<ModelsKontak> createState() => _ModelsKontakState();
}

class _ModelsKontakState extends State<ModelsKontak> {
  @override
  Widget build(BuildContext context) {
    final random = Random();

    List<String> hari = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      "Jum'at",
      'Sabtu',
      'Minggu'
    ];

    var getHari = hari[random.nextInt(hari.length)];

    //Array icon panggilan
    List<Icon> icontelp = [
      const Icon(Icons.call_made_outlined, size: 15),
      const Icon(Icons.call_missed, size: 15),
      const Icon(Icons.call_missed_outgoing_outlined, size: 15),
      const Icon(Icons.call_received_outlined, size: 15),
    ];
    //Mendapatkan random dari array
    var element = icontelp[random.nextInt(icontelp.length)];

    bool kondisi = false;
    if (element == icontelp[1] || element == icontelp[2]) kondisi = true;

    //Array warna icon avatar
    List<Color> warna = [
      Colors.greenAccent.shade200,
      Colors.redAccent.shade200,
      Colors.pink.shade300,
      Colors.yellow.shade300,
      Colors.blue.shade200,
      Colors.orange.shade300
    ];

    List<Map<String, String>> kontakku = [
      {"Nama": "Putra", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Arum", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Alex", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Flutter", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Putra", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Putra", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Putra", "Alamat": "Sidoarjo", "No": "081237131587"},
      {"Nama": "Putra", "Alamat": "Sidoarjo", "No": "081237131587"},
    ];

    //Mendapatkan random warna dari array
    var warnapilihan = warna[random.nextInt(warna.length)];
    return Container(
      padding: const EdgeInsets.only(bottom: 5, top: 5),
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: warnapilihan,
                child: Text(
                  generateRandomString(),
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    faker.person.name(),
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      element,
                      const SizedBox(width: 5),
                      Text(
                        'Mobile',
                        style: TextStyle(
                          color: (kondisi == true ? Colors.red : Colors.black),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.dangerous_outlined, size: 13),
                      Text(
                        getHari,
                        style: TextStyle(
                          color: (kondisi == true ? Colors.red : Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Panggilan()),
              );
            },
            icon: const Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}

String generateRandomString() {
  var r = Random();
  const _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  return List.generate(1, (index) => _chars[r.nextInt(_chars.length)]).join();
}
