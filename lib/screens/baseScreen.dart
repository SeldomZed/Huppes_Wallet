// ignore: file_names
// ignore: file_names
import 'package:crypto_wallet/screens/datascreen.dart';
import 'package:crypto_wallet/screens/homeScreen.dart';
import 'package:crypto_wallet/screens/swapScreen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [
    DataScreen(),
    HomeScreen(),
    SwapScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(backgroundColor: const Color(0xFF043A70)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF043A70), Color(0xFF061226)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.8],
          ),
        ),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: ClipRRect(
          child: BottomNavigationBar(
            iconSize: 30,
            backgroundColor: const Color(0xFF061226),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
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
      ),
    );
  }
}
