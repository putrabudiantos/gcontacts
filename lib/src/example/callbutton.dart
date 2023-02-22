import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Panggilan extends StatefulWidget {
  const Panggilan({super.key});

  @override
  State<Panggilan> createState() => _PanggilanState();
}

class _PanggilanState extends State<Panggilan> {
  Faker nama = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red.shade300,
                radius: 40,
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                nama.person.name(),
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Radio Mati',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.dialpad,
                            size: 35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Dial',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_up_outlined,
                            size: 35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Speaker'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_ic_call_outlined,
                            size: 35,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text('Tambah'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: Colors.red),
                child: IconButton(
                  onPressed: () {
                    // Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.call_end,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      // int count = 0;
      // Navigator.of(context).popUntil((_) => count-- >= 2);
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  CupertinoAlertDialog alert = CupertinoAlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
