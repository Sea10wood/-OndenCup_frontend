import 'package:flutter/material.dart';
import '../component/talkBar.dart';

class PlaceSet extends StatelessWidget {
  const PlaceSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Logo(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconBar(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Talk(),
          ),
          Row(
            children: <Widget>[
              TextField(decoration: InputDecoration(labelText: '未入力')),
              Spacer(flex: 1),
              TextField(decoration: InputDecoration(labelText: '未入力')),
              Spacer(flex: 2),
              MyElevatedButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'FukuTra',
      style: TextStyle(
        color: Color(0xFF005AFF),
        fontSize: 24,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.search,
          size: 48,
          color: Colors.blue,
        ),
        Transform.rotate(
          angle: 90 * 3.14159265 / 180,
          child: Icon(
            Icons.change_history,
            size: 24,
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.person,
          size: 48,
          color: Colors.grey,
        ),
        Transform.rotate(
          angle: 90 * 3.14159265 / 180,
          child: Icon(
            Icons.change_history,
            size: 24,
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.drive_eta,
          size: 48,
          color: Colors.grey,
        ),
        Transform.rotate(
          angle: 90 * 3.14159265 / 180,
          child: Icon(
            Icons.change_history,
            size: 24,
            color: Colors.grey,
          ),
        ),
        Icon(
          Icons.calendar_today,
          size: 48,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Bubble(
      text: '集合場所/最寄駅',
      textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Button'),
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
    );
  }
}
