import 'package:flutter/material.dart';

class PemerintahPage extends StatefulWidget {
  const PemerintahPage({super.key});

  @override
  State<PemerintahPage> createState() => _PemerintahPageState();
}

class _PemerintahPageState extends State<PemerintahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "PEMERINTAH PAGE",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color(0xff3D4DE0)),
        ),
      ),
    );;
  }
}
