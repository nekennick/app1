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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Gọi phương thức _showResult() sau khi delay 2 giây
    _showResult();
  }

  void _showResult() {
    // Delay 2 giây
    Future.delayed(const Duration(seconds: 2), () {
      // Cập nhật trạng thái isLoading và hiển thị widget.result
      setState(() {
        isLoading = false;
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
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(' ${widget.name1} ', style: const TextStyle(fontSize: 32)),
            SizedBox(
              height: 40,
              child: Image.asset('lib/icons/love.png'),
            ),
            Text(' ${widget.name2} ', style: const TextStyle(fontSize: 32)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : Text(
                          widget.result,
                          style: const TextStyle(fontSize: 22),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
