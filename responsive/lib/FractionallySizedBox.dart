import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(title: Center(child: const Text('FractionallySizedBox')),

        ),
        body: SizedBox.expand(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.5,
          alignment: FractionalOffset.center,
          child:
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
            ),
          ),

        ),
    ),
      );
  }
}