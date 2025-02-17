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

  int _selectedIndex = 1;

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
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            stops: [0.1, 0.8], // Transition plus fluide
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "\ ",
                  style: GoogleFonts.inter(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (_selectedIndex == 1)
              Divider(
                color: Colors.white70,
                thickness: 3,
                endIndent: 183,
                indent: 183,
              ),
            if (_selectedIndex == 0)
              Divider(
                color: Colors.white70,
                thickness: 3,
                endIndent: 322,
                indent: 45,
              ),
            if (_selectedIndex == 2)
              Divider(
                color: Colors.white70,
                thickness: 3,
                endIndent: 46,
                indent: 321,
              ), // Ligne fine blanche
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Color(0xFF003366), // Fond noir
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.candlestick_chart),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_horiz_outlined),
              label: "",
            ),
          ],
        ),
      ),
    );
  }

  // Widget _buildPage(int index) {
  //   switch (index) {
  //     case 0:
  //       return ChartPage(); // Remplace par ta page de graphiques
  //     case 1:
  //       return WalletPage(); // Remplace par ta page de wallet
  //     case 2:
  //       return SettingsPage(); // Remplace par ta page de paramètres
  //     default:
  //       return Container();
  //   }
  // }
}
