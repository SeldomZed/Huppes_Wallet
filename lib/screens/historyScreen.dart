import 'package:flutter/material.dart';

class Historyscreen extends StatefulWidget {
  const Historyscreen({super.key});

  @override
  State<Historyscreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<Historyscreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "History",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
