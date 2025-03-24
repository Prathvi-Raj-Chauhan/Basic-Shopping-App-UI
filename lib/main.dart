import 'package:flutter/material.dart';
import 'package:login_page_01/PAGES/intro.dart';
import 'package:provider/provider.dart';
import 'PAGES/home.dart';
import 'models/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const introPage(),
            routes: {'/home': (context) => home()},
          ),
    );
  }
}
