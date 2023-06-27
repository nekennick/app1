import 'package:app1/widget.dart';
import 'package:flutter/material.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';

class ResultScreen extends StatelessWidget {
  final String result;
  final String name1;
  final String name2;
  final int sum1;
  final int sum2;

  const ResultScreen({
    super.key,
    required this.name1,
    required this.name2,
    required this.sum1,
    required this.sum2,
    required this.result,
  });

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
          Text(' $name1 ', style: const TextStyle(fontSize: 28)),
          SizedBox(
            height: 40,
            child: Image.asset('lib/icons/love.png'),
          ),
          Text(' $name2 ', style: const TextStyle(fontSize: 28)),
          // SizedBox(
          //   height: 50,
          //   width: double.infinity,
          //   child: SizedBox(
          //     height: 50,
          //     width: 100,
          //     child: Card(
          //       color: Colors.pink,
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10)),
          //       child: LoadingAnimationWidget.staggeredDotsWave(
          //         color: Colors.white,
          //         size: 50,
          //       ),
          //     ),
          //   ),
          // ),
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
