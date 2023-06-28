import 'package:app1/logic/resultname.dart';
import 'package:app1/logic/singledigit.dart';
import 'package:app1/logic/sumofnumber.dart';
import 'package:app1/widget.dart';
import 'package:flutter/material.dart';

import '../resultscreen.dart';

class BoiToan extends StatefulWidget {
  const BoiToan({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoiToanState createState() => _BoiToanState();
}

class _BoiToanState extends State<BoiToan> {
  bool isLoading = false;
  final TextEditingController name1Controller = TextEditingController();
  final TextEditingController name2Controller = TextEditingController();
  String result = '';

  void _showResultScreen() {
    String name1 = name1Controller.text;
    String name2 = name2Controller.text;

    int sum1 = getSumOfNumber(name1);
    int sum2 = getSumOfNumber(name2);

    int totalSum = sum1 + sum2;
    int singleDigitSum = getSingleDigit(totalSum);

    result = getResultName(singleDigitSum);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          name1: name1,
          name2: name2,
          sum1: sum1,
          sum2: sum2,
          result: result,
        ),
      ),
    );
  }

  void _startLoading() {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        _showResultScreen();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      //
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextField(
                controller: name1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Tên của bạn',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: name2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Tên người ấy',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  _startLoading();
                },
                child: Card(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: isLoading
                          ? const CircularProgressIndicator()
                          : const Row(
                              children: [
                                Expanded(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bói Tình Yêu',
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Text(
                                          'Tìm hiểu sự tương hợp trong tình yêu đôi lứa!',
                                          style: TextStyle(),
                                        ),
                                      ]),
                                ),
                                Row(
                                  children: <Widget>[Icon(Icons.accessibility)],
                                )
                              ],
                            ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showResultScreen();
                },
                child: Card(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bói Sự Nghiệp',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                  Text(
                                    'Tìm hiểu sự tương hợp trong tình yêu đôi lứa!',
                                    style: TextStyle(),
                                  )
                                ]),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _showResultScreen();
                },
                child: Card(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bói Hôn Nhân',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                  Text(
                                    'Tìm hiểu sự tương hợp trong tình yêu đôi lứa!',
                                    style: TextStyle(),
                                  )
                                ]),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tìm hiểu sự tương hợp trong tình yêu đôi lứa!',
                                  style: TextStyle(),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
