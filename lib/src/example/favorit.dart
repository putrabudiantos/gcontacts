import 'package:flutter/material.dart';

class Favorit extends StatefulWidget {
  const Favorit({super.key});

  @override
  State<Favorit> createState() => _FavoritState();
}

class _FavoritState extends State<Favorit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/contoh/preview.png',
            fit: BoxFit.contain,
            height: 250,
            width: 250,
          ),
          const Text(
            'Tidak Ada Kontak Favorit',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
