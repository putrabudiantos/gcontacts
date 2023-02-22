import 'package:flutter/material.dart';

class KontakDataUser extends StatelessWidget {
  KontakDataUser({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: kontakku.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red.shade200,
                  child: const Text(
                    'A',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text("${e['Nama']}")
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
