import 'package:crypto_wallet/ressources/myTheme.dart';
import 'package:crypto_wallet/screens/walletInput.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
      const MyApp()); // lance l'application Flutter en démarrant avec le widget racine MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: Mytheme.colorScheme,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner:
          false, // pour enlever le DEBUG rouge en haut à droite
      initialRoute: "/", // le premier ecran qui s'affiche quand on lance l'app
      routes: {
        // les routes de tous les autres ecrans (les noms "..." ne sont pas correlés aux noms des fichiers)
        "/": (context) => const WalletInput(),
        // "/": (context) => const (),
        // "/": (context) => const (),
        // "/": (context) => const (),
      },
    );
  }
}
