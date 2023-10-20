import 'package:flutter/material.dart';

import 'FractionallySizedBox.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('FittedBoxE')),
        actions: [
          SizedBox(width: 20,),
          IconButton(
              icon: Icon(Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return FractionallySizedBoxExample();
                }));
              }
          ),
        ],
      ),
      body:Container(
        height: 400,
        width: 300,
        color: Colors.blue,
        child: const FittedBox(
          // TRY THIS: Try changing the fit types to see how they change the way
          // the placeholder fits into the container.
          fit: BoxFit.fill,
          child: Placeholder(),
        ),
      ),
    );
  }
}