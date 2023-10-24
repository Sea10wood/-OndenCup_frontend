import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key); // Fix super.key and add Key?

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFffffff),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            App(),
          ],
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                top: 138,
                child: SizedBox(
                  width: 164,
                  height: 40,
                  child: Text(
                    'FukuTra',
                    style: TextStyle(
                      color: const Color(0xFF005AFF),
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 208,
                child: SizedBox(
                  width: 154,
                  height: 20,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '旅をもっと',
                          style: TextStyle(
                            color: const Color(0xFF686868),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        TextSpan(
                          text: '想像的',
                          style: TextStyle(
                            color: const Color(0xFF0019FF),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                        TextSpan(
                          text: 'に',
                          style: TextStyle(
                            color: const Color(0xFF686868),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 400,
                child: Text(
                  '福岡に住んでるけど、紹介できるほど知らない人へ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0.17,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              Positioned(
                left: 156,
                top: 538,
                child: SizedBox(
                  width: 180,
                  height: 21,
                  child: Text(
                    'created by そーらーしーうるふ',
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 176,
                top: 418,
                child: Container(
                  width: 120,
                  height: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mainLogo.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -82,
                top: -388,
                child: SizedBox(
                  width: 481,
                  height: 168,
                  child: Text(
                    '福岡に住んでるけど、紹介できるほど知らない人へ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 178,
                child: SizedBox(
                  width: 313,
                  height: 18,
                  child: Text(
                    'FukuokaTravel',
                    style: TextStyle(
                      color: const Color(0xFF757575),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
