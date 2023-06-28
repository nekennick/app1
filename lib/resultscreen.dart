import 'package:app1/widget.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String result;
  final String name1;
  final String name2;
  final int sum1;
  final int sum2;

  const ResultScreen({
    Key? key,
    required this.name1,
    required this.name2,
    required this.sum1,
    required this.sum2,
    required this.result,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
          Text(' ${widget.name1} ', style: const TextStyle(fontSize: 28)),
          SizedBox(
            height: 40,
            child: Image.asset('lib/icons/love.png'),
          ),
          Text(' ${widget.name2} ', style: const TextStyle(fontSize: 28)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.pink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.result,
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
