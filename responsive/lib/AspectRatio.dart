import 'package:flutter/material.dart';

import 'FittedBox.dart';

class Responsive3 extends StatefulWidget {
  const Responsive3({super.key});

  @override
  State<Responsive3> createState() => _Responsive3State();
}

class _Responsive3State extends State<Responsive3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('AspectRatio')),
        actions: [
          SizedBox(width: 20,),
          IconButton(
              icon: Icon(Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FittedBoxExample();
                }));
              }
          ),
        ],
      ),
      body: AspectRatio(
        aspectRatio: 3 / 2,
         child:  Image.asset("icon/ic.png"),

        //  Container(
        //   color: Colors.black,
        //   child: const Center(
        //     child: FlutterLogo(
        //       size: 100,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
