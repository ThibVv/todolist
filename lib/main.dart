import 'package:flutter/material.dart';
import 'todolistapp.dart';

void main() {
  runApp(TodolistApp());
}



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }

