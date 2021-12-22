import 'package:flutter/material.dart';
import 'package:rain_base/MainPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final List<String> entries = <String>[
  'Amet',
  'Bhim',
  'Deagarh',
  'Kumbhalgarh',
  'Nathdwara',
  'Railmagra',
  'Rajsamand'
];
final List<int> colorCodes = <int>[100, 200, 300, 400, 500, 600, 700];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
