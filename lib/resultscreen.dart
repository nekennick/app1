import 'package:app1/widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          result,
          style: const TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
