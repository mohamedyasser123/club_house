import 'package:clubhouse_ui/constans.dart';
import 'package:clubhouse_ui/screens/Homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Clubhouse",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
        appBarTheme: AppBarTheme(
          backgroundColor: KAppbar,
          iconTheme: IconThemeData(color: Colors.black, size: 28),

        ),
        primaryColor: Colors.green
      ),
      home: HomePage(),
    );
  }
}
