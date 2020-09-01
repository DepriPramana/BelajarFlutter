import 'package:belajar_listview/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized(); //Harus Pakai ini
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  // .then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
