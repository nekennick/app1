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
              TextField(
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
              TextField(
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
              ElevatedButton(
                onPressed: () {
                  String result = getResultName(name1, name2);
                  _showResultScreen(
                      result); // Hiển thị kết quả trên màn hình khác
                },
                child: const Text('Tính kết quả'),
              ),
              Card(
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
                                  'Bói Tình Yêu',
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
              Card(
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
                                  'Bói Tình Yêu',
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
              Card(
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
                                  'Bói Tình Yêu',
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
              const SizedBox(
                height: 10,
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

int getSumOfNumber(String name) {
  int sum = 0;
  for (int i = 0; i < name.length; i++) {
    switch (name[i]) {
      case 'a':
      case 'k':
      case 'u':
        sum += 1;
        break;
      case 'b':
      case 's':
      case 'j':
        sum += 2;
        break;
      case 'c':
      case 'l':
      case 't':
        sum += 3;
        break;
      case 'd':
      case 'n':
      case 'x':
        sum += 4;
        break;
      case 'e':
      case 'm':
      case 'w':
        sum += 5;
        break;
      case 'f':
      case 'o':
      case 'v':
        sum += 6;
        break;
      case 'g':
      case 'q':
      case 'z':
        sum += 7;
        break;
      case 'h':
      case 'p':
      case 'y':
        sum += 8;
        break;
      case 'i':
      case 'r':
        sum += 9;
        break;
      default:
        // Nếu ký tự không có trong danh sách chữ cái tương ứng thì bỏ qua
        break;
    }
  }
  return sum;
}

int getSingleDigit(int number) {
  while (number > 9) {
    int sum = 0;
    while (number > 0) {
      sum += number % 10;
      number ~/= 10;
    }
    number = sum;
  }
  return number;
}

String getResultName(String name1, String name2) {
  int sumName1 = getSumOfNumber(name1.toLowerCase());
  int sumName2 = getSumOfNumber(name2.toLowerCase());
  int totalSum = getSingleDigit(sumName1 + sumName2);

  String result;
  switch (totalSum) {
    case 1:
      result = 'kq1';
      break;
    case 2:
      result = 'kq2';
      break;
    case 3:
      result = 'kq3';
      break;
    case 4:
      result = 'kq4';
      break;
    case 5:
      result = 'kq5';
      break;
    case 6:
      result = 'kq6';
      break;
    case 7:
      result = 'kq7';
      break;
    case 8:
      result = 'kq8';
      break;
    case 9:
      result = 'kq9';
      break;
    default:
      result = 'Không hợp lệ';
      break;
  }
  return result;
}
