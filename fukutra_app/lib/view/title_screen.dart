import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              text: const TextSpan(
                text: 'FukuTra',
                style: TextStyle(
                  color: Color(0xFF005AFF),
                  fontSize: 64,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: RichText(
                text: const TextSpan(
                    text: 'FukuokaTravel',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 208, 0),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                    )),
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
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        )),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: '想像的',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 26, 255),
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        )),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: 'に',
                        style: TextStyle(
                          color: Color.fromARGB(255, 105, 105, 105),
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.0,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      context.go('/login');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('ログイン',
                        style: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      context.go('/signup');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    child: const Text('新規登録',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: RichText(
                text: const TextSpan(
                  text: '福岡に住んでるけど、紹介できるほど知らない人へ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                  ),
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'created by そーらーしーうるふ',
                style: TextStyle(
                  color: Color.fromARGB(255, 105, 105, 105),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
            ),
            Container(
              width: 240,
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/mainLogo.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'FukuokaTravel',
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
