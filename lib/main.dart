import 'package:flutter/material.dart';
import 'package:social_share_example/share_example_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter social share example',
      home: ShareExampleScreen(),
    );
  }
}
