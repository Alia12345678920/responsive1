import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({super.key});

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Design')),
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