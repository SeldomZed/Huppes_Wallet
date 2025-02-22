import 'package:Huppes_Wallet/screens/dataScreen.dart';
import 'package:Huppes_Wallet/screens/historyScreen.dart';
import 'package:Huppes_Wallet/screens/homeScreen.dart';
import 'package:Huppes_Wallet/screens/swapScreen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DataScreen(),
    HomeScreen(),
    SwapScreen(),
    Historyscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(backgroundColor: const Color(0xFF0D0D0D)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0D0D0D),
              Color(0xFF0D0D0D), // 0xFF1E1E1E
            ],
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
            iconSize: 25,
            backgroundColor: const Color(0xFF0D0D0D), // 0xFF1E1E1E
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: GradientIcon(Icons.language, _selectedIndex == 0),
                label: "",
              ),
              BottomNavigationBarItem(
                icon:
                    GradientIcon(Icons.candlestick_chart, _selectedIndex == 1),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: GradientIcon(Icons.home, _selectedIndex == 2),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: GradientIcon(
                    Icons.swap_horiz_outlined, _selectedIndex == 3),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: GradientIcon(Icons.history, _selectedIndex == 0),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget GradientIcon(IconData icon, bool isSelected) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: isSelected
            ? [
                Color(0xffead99c),
                Color(0xFFb28942),
              ]
            : [
                Color(0xB0EAD99C),
                Color(0x99B28942),
              ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      child: Icon(icon, color: Colors.white, size: 27),
    );
  }
}
