import 'package:flutter/material.dart';

class CariBar extends StatefulWidget {
  const CariBar({super.key});

  @override
  State<CariBar> createState() => _CariBarState();
}

class _CariBarState extends State<CariBar> {
  bool cari = false;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          autofocus: true,
          showCursor: true,
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Cari Kontak',
            suffixIcon: _controller.text != null
                ? Padding(
                    padding: const EdgeInsetsDirectional.only(bottom: 2),
                    child: IconButton(
                      onPressed: () => _controller.clear(),
                      icon: const Icon(Icons.clear),
                      iconSize: 25,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
