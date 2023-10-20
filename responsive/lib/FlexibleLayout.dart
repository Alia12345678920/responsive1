import 'package:flutter/material.dart';

import 'MediaQuery.dart';

class Responsive1 extends StatefulWidget {
  const Responsive1({super.key});

  @override
  State<Responsive1> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('FlexibleLayout')),
        actions: [
          SizedBox(width: 20,),
          IconButton(
              icon: Icon(Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Responsive2();
                }));
              }
          ),
        ],
      ),
     body:
         Row(
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


          ],),


    );
  }
}

