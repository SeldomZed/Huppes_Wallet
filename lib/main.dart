import 'package:crypto_wallet/ressources/myTheme.dart';
import 'package:crypto_wallet/screens/baseScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: MyTheme.colorScheme,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const BaseScreen(),
    );
  }
}
