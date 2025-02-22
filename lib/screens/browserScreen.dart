import 'package:flutter/material.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({super.key});

  @override
  State<BrowserScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 2,
        ),
        Text(
          "It’s Coming !",
          style: TextStyle(color: Color(0xffead99c), fontSize: 30),
        ),
        Spacer(
          flex: 3,
        )
      ],
    );
  }
}
