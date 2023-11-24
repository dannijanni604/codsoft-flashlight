import 'package:codsoft_flashlight/homepage_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashlightApp());
}

class FlashlightApp extends StatelessWidget {
  const FlashlightApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FlashLight App',
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
