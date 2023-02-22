import 'kontakdata.dart';

class Insert {
  List<Map<String, String>> data = [];
  Insert({String? nama, String? nomor}) {
    datakontak.add(
      {
        "First Name": nama.toString(),
        "Phone Number": nomor.toString(),
      },
    );

    data.add({
      "First Name": nama.toString(),
      "Phone Number": nomor.toString(),
    });
  }

  void show() {
    print(data);
  }
}

// class Data {
//   static List<Map<String, String>> data = [];
//   data
// }
