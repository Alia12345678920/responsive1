import 'package:flutter/material.dart';

class Responsive1 extends StatefulWidget {
  const Responsive1({super.key});

  @override
  State<Responsive1> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expanded(
        //     child: Container(
        //       color: Colors.yellowAccent,
        //     )),
        // Expanded(
        //     child: Container(
        //       color: Colors.orangeAccent,
        //     )),
        // Expanded(
        //     child: Container(
        //       color: Colors.pinkAccent,
        //     )),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellowAccent,
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.pinkAccent,
            )),
      ],
    );
  }
}

