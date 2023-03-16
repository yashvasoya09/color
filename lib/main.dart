import 'package:color/home/homecreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => HomeScreen(),
      },
    ),
  );
}