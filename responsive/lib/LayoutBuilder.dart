import 'package:flutter/material.dart';

import 'AspectRatio.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('LayoutBuilder')),
        actions: [
          SizedBox(width: 20,),
          IconButton(
              icon: Icon(Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Responsive3();
                }));
              }
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 480) {
            return Row(
              children: [
                Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: const [
                      ListTile(title: Text('Menu Item 1')),
                      ListTile(title: Text('Menu Item 2')),
                      ListTile(title: Text('Menu Item 3')),
                    ],
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text('Content Area'),
                  ),
                ),
              ],
            );
          } else {
            return ListView(
              children: const [
                ListTile(title: Text('Menu Item 1')),
                ListTile(title: Text('Menu Item 2')),
                ListTile(title: Text('Menu Item 3')),
              ],
            );
          }
        },
      ),
    );
  }
}
