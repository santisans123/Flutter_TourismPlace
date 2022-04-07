import 'package:flutter/material.dart';
import 'package:percobaandua/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

import 'detail_screen.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Wisata',
        theme: ThemeData(),
        home: MainScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}