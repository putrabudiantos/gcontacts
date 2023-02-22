import 'package:flutter/material.dart';
import 'valid.dart';
// import 'package:input_form_field/input_form_field.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'controllertext.dart';

class KontakBaru extends StatefulWidget {
  const KontakBaru({super.key});

  @override
  State<KontakBaru> createState() => _KontakBaruState();
}

class _KontakBaruState extends State<KontakBaru> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  final namakontak = TextEditingController();
  final nomorkontak = TextEditingController();
  String initialCountry = 'ID';
  PhoneNumber number = PhoneNumber(isoCode: 'ID');

  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  final List<String> genderItems = [
    'Tidak ada label',
    'Mobile',
    'Kantor',
    'Rumah',
    'Utama',
    'Fax Kantor',
    'Fax Rumah',
    'Pager'
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Buat Kontak', style: TextStyle(fontSize: 17)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Insert saving =
                  Insert(nama: namakontak.text, nomor: nomorkontak.text);
              saving.show();
              print("Nama: ${namakontak.text}");
              print("Nomor: ${nomorkontak.text}");
              const AlertDialog(
                icon: Icon(Icons.save_alt),
                title: Text('Berhasil disimpan'),
              );
            },
            child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Simpan',
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
          PopupMenuButton<Text>(
            tooltip: 'Opsi Lanjutan',
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text(
                    'Bantuan',
                    style: TextStyle(fontSize: 14),
                  ),
                  onTap: () {},
                )
              ];
            },
            elevation: 2,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.amber.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Simpan ke',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          width: 200,
                          height: 23,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                elevation: 1,

                                // Initial Value
                                value: dropdownvalue,

                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map(
                                  (String index) {
                                    return DropdownMenuItem(
                                      value: index,
                                      child: Text(
                                        index,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    );
                                  },
                                ).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(
                                    () {
                                      dropdownvalue = newValue!;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(33),
                    backgroundColor: Colors.amber.shade200, // <-- Button color
                    foregroundColor: Colors.red, // <-- Splash color
                  ),
                  child: const Icon(
                    Icons.add_photo_alternate_outlined,
                    color: Colors.black87,
                    size: 53,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Tambah Foto',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13, right: 13, top: 20, bottom: 15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: _controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Nama',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black54,
                        )),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 13, right: 13, bottom: 15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    maxLength: 13,
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nomor Hp',
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 13, right: 13, bottom: 15),
                  child: TextFormField(
                    // autovalidateMode: true,
                    // validator: (input) =>
                    //     input.isValidEmail() ? null : "Check Your Email",
                    // textInputAction: TextInputAction.next,
                    // controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 13, right: 13, bottom: 15),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Perusahaan',
                      prefixIcon: Icon(
                        Icons.home_work_sharp,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 13, right: 13, bottom: 10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    // controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Fax',
                      prefixIcon: Icon(
                        Icons.fax,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 15, right: 170, top: 5, bottom: 5),
                  child: DropdownButtonFormField2(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.label_important),
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      //Add more decoration as you want here
                      //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Label',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black54,
                    ),
                    iconSize: 30,
                    buttonHeight: 50,
                    buttonPadding: const EdgeInsets.only(left: 0, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    items: genderItems
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select gender.';
                      }
                    },
                    onChanged: (value) {
                      //Do something when changing the item if you want.
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                  ),
                ),
                const SizedBox(height: 10),

                //Input Nomor Hp dengan country
                // Padding(
                //   padding: const EdgeInsets.only(
                //       left: 13, right: 13, top: 20, bottom: 15),
                //   child: InternationalPhoneNumberInput(
                //     maxLength: 12,
                //     onInputChanged: (PhoneNumber number) {
                //       print(number.phoneNumber);
                //     },
                //     onInputValidated: (bool value) {
                //       print(value);
                //     },
                //     selectorConfig: const SelectorConfig(
                //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                //     ),
                //     ignoreBlank: false,
                //     autoValidateMode: AutovalidateMode.disabled,
                //     selectorTextStyle: const TextStyle(color: Colors.black),
                //     initialValue: number,
                //     textFieldController: _controller,
                //     formatInput: true,
                //     keyboardType: const TextInputType.numberWithOptions(
                //         signed: true, decimal: true),
                //     inputBorder: const OutlineInputBorder(),
                //     onSaved: (PhoneNumber number) {
                //       print('On Saved: $number');
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  var items = [
    'gaulsaputra@gmail.com',
    'localhosting8080@gmail.com',
    'localhosting127.0.0.1@email.com',
  ];
  String dropdownvalue = 'gaulsaputra@gmail.com';
  void dropdowncallback(String? selected) {
    if (selected is String) {
      setState(
        () {
          dropdownvalue = selected;
        },
      );
    }
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
