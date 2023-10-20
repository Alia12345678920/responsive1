import 'package:flutter/material.dart';
import 'AspectRatio.dart';
import 'FittedBox.dart';
import 'FlexibleLayout.dart';
import 'FractionallySizedBox.dart';
import 'LayoutBuilder.dart';
import 'MediaQuery.dart';

// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Responsive',
//       home: Responsive3(),
//     );
//   }
// }




// void main() => runApp(const FittedBoxApp());
//
// class FittedBoxApp extends StatelessWidget {
//   const FittedBoxApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('FittedBox Sample')),
//         body: const Center(
//           child: FittedBoxExample(),
//         ),
//       ),
//     );
//   }
// }

void main() => runApp(const FractionallySizedBoxApp());

class FractionallySizedBoxApp extends StatelessWidget {
  const FractionallySizedBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FractionallySizedBox Sample')),
        body: const FractionallySizedBoxExample(),
      ),
    );
  }
}
