import 'package:flutter/material.dart';

import 'LayoutBuilder.dart';

class Responsive2 extends StatefulWidget {
  const Responsive2({super.key});

  @override
  State<Responsive2> createState() => _Responsive2State();
}

class _Responsive2State extends State<Responsive2> {
  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('MediaQurey')),
        actions: [
          SizedBox(width: 20,),
          IconButton(
              icon: Icon(Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Responsive();
                }));
              }
          ),
        ],
      ),
      body: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Container(
            color: Colors.yellow,
            height: height / 2, // half of the screen height size
            width: width / 2, // half of the screen width size
          ),
        ),
      ),
    );
  }
}
