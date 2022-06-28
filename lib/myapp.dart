import 'package:flutter/material.dart';
import 'package:osfinance/homepage.dart';

class MyApp extends StatelessWidget {


  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch:Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}
