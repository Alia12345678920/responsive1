import 'package:flutter/material.dart';

class Responsive3 extends StatefulWidget {
  const Responsive3({super.key});

  @override
  State<Responsive3> createState() => _Responsive3State();
}

class _Responsive3State extends State<Responsive3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          color: Colors.black,
          child: const Center(
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
