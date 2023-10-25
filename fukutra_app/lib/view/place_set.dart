import 'package:flutter/material.dart';
import '../component/FukuTra_Bar.dart';

class PlaceSet extends StatelessWidget {
  const PlaceSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white, // 背景色を白に設定
          ),
          Positioned(
            left: 20,
            top: 80,
            child: CustomTextWidget(
              text: 'FukuTra',
              fontSize: 24.0,
              textColor: Color(0xFF005AFF),
            ),
          ),
          Positioned(
            left: 28,
            top: 156,
            child: Icon(
              Icons.search,
              size: 48,
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 80,
            top: 168,
            child: Transform.rotate(
              angle: -270 * 3.14159265 / 180,
              child: Icon(
                Icons.change_history,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 108,
            top: 156,
            child: Icon(
              Icons.person,
              size: 48,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 164,
            top: 168,
            child: Transform.rotate(
              angle: -270 * 3.14159265 / 180,
              child: Icon(
                Icons.change_history,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 192,
            top: 156,
            child: Icon(
              Icons.drive_eta,
              size: 48,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 244,
            top: 168,
            child: Transform.rotate(
              angle: -270 * 3.14159265 / 180,
              child: Icon(
                Icons.change_history,
                size: 24,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            left: 272,
            top: 156,
            child: Icon(
              Icons.calendar_month,
              size: 48,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
