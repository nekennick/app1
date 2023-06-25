import 'package:app1/logic/resultname.dart';
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
  String name1 = '';
  String name2 = '';

  void _showResultScreen(String result) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(result: result),
      ),
    );
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
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    name1 = value;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Tên của bạn',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    name2 = value;
                  });
                },
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
                  String result = getResultName(name1, name2);
                  _showResultScreen(result);
                },
                child: Card(
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
                  String result = getResultName(name1, name2);
                  _showResultScreen(result);
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
                  String result = getResultName(name1, name2);
                  _showResultScreen(result);
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
