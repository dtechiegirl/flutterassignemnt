import 'package:flutter/material.dart';
import 'package:savings_app/features/home/pages/home_page.dart';
// import 'package:testprj/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kówópé',
      theme: ThemeData(

        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:Homepage() ,
    );
  }
}

