import 'package:app1/values/app_assets.dart';
import 'package:app1/values/app_colors.dart';

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
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: widget.name1,
                      style: const TextStyle(
                          fontSize: 40,
                          fontFamily: 'Coiny',
                          color: AppColors.nameColor,
                          shadows: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(3, 6),
                                blurRadius: 15),
                          ])),
                ),
                const SizedBox(height: 10),
                Image.asset(AppAssets.love, height: 50, width: 50),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: widget.name2,
                      style: const TextStyle(
                          fontSize: 40,
                          fontFamily: 'Coiny',
                          color: AppColors.nameColor,
                          shadows: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(3, 6),
                                blurRadius: 15),
                          ])),
                ),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.contentcolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : Column(
                            children: [
                              RichText(
                                  text: TextSpan(
                                      text: widget.result,
                                      style: const TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Braah_One',
                                          color: Colors.black)))
                            ],
                          ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
