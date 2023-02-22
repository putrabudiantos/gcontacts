import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kursuskoding/src/example/contoh.dart';
import 'package:kursuskoding/src/example/models.dart';
import 'package:kursuskoding/src/utils/theme/theme.dart';
// import 'package:kursuskoding/src/features/authentication/screens/splash_screen/splash_screen.dart';
// import 'package:kursuskoding/src/exampledata/datakdiri.dart';
// import 'package:kursuskoding/src/exampledata/getdatadiri.dart';

void main() {
  runApp(const KursusKoding());
  // GetData namaku = GetData(getNama: PersonalData.data);
  // print(namaku);
}

class KursusKoding extends StatelessWidget {
  const KursusKoding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Example(),
        // When navigating to the "/sond" route, build the SecondScreen widget.
        '/panggilan': (context) => const ModelsKontak(),
      },
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      // theme: ThemeData(useMaterial3: true),
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      title: 'KursusKoding',
      // home: const Example(),
    );
  }
}
