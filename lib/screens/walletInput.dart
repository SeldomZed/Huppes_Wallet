import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletInput extends StatefulWidget {
  const WalletInput({super.key});

  @override
  State<WalletInput> createState() => _WalletInputState();
}

class _WalletInputState extends State<WalletInput> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D0D0D),
      ),
      body: Container(
        width: double.infinity, // Prend toute la largeur
        height: double.infinity, // Prend toute la hauteur
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0D0D0D), Color(0xFF003366)],
            begin: Alignment.topCenter, // Dégradé plus équilibré
            end: Alignment.bottomRight,
            stops: [0.1, 0.8], // Transition plus fluide
          ),
        ),
        child: Column(
          children: [
            Text(
              "\$202.05",
              style: GoogleFonts.inter(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
