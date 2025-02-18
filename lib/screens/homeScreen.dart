import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 120,
          decoration: BoxDecoration(
            color: const Color(0xff3a3939), // Bleu foncé
            borderRadius: BorderRadius.circular(20), // Coi0ns arrondis
            boxShadow: [
              BoxShadow(
                color: Colors.black, // Ombre noire semi-transparente
                blurRadius: 10, // Flou de l'ombre
                offset: const Offset(0, 5), // Déplacement de l'ombre (x, y)
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "202.05",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
