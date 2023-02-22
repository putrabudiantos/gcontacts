import 'package:flutter/material.dart';
import 'models.dart';
import 'kontakdata.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});

  @override
  State<Riwayat> createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    List<Widget> dataku = [];
    for (int i = 1; i <= 20; i++) {
      dataku.add(const ModelsKontak());
    }
    return ListView(
      padding: const EdgeInsets.only(left: 10, right: 10),
      children: datakontak.map(
        (data) {
          return const ModelsKontak();
        },
      ).toList(),
    );
  }
}
