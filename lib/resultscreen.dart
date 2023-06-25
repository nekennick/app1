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
      body: Column(
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('data'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  result,
                  style: const TextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
