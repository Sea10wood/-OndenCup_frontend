import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth >= 600;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(''),
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'FukuTra',
                    style: TextStyle(
                      color: Color(0xFF005AFF),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                      fontSize: isWideScreen ? 68.0 : 48.0,
                    ),
                  ),
                  TextSpan(text: '\n'),
                  TextSpan(
                    text: 'FukuokaTravel',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 208, 0),
                      fontSize: isWideScreen ? 32.0 : 24.0,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 5, 10),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '旅をもっと',
                      style: TextStyle(
                        color: Color.fromARGB(255, 105, 105, 105),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: '想像的',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 26, 255),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'に',
                      style: TextStyle(
                        color: Color.fromARGB(255, 105, 105, 105),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: const Text('ログイン',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        context.go('/signup');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      child: const Text('新規登録',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Transform.scale(
                scale: isWideScreen ? 1.5 : 1.0,
                child: Container(
                  padding: EdgeInsets.only(
                    top: isWideScreen ? 100.0 : 20.0,
                    right: isWideScreen ? 10.0 : 20.0,
                    bottom: 40,
                  ),
                  width: 240,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/mainLogo.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.only(top: 30, right: 10),
                child: RichText(
                  text: const TextSpan(
                    text: 'created by そーらーしーうるふ',
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
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
