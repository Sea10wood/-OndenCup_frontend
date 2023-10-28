import 'package:flutter/material.dart';
import 'package:fukutra_app/view/place_set.dart';
import '../../component/talkBar.dart';

class MoveSet extends StatelessWidget {
  const MoveSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth >= 600;
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
          RichText(
            text: const TextSpan(
              text: '基本的な移動手段',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.0,
              ),
            ),
          ),
          CheckboxTransportationSet(),
          RichText(
            text: const TextSpan(
              text: '予算目安',
              style: TextStyle(
                color: Color(0xFF212121),
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: isWideScreen ? 120 : 16,
              right: isWideScreen ? 120 : 16,
              top: 40,
              bottom: 0,
            ),
            child: Container(
              child: CheckboxBudgetSet(),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.yellow,
            ),
            onPressed: null,
            child: Text('次へ'),
          ),
        ],
      ),
    );
  }
}

class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 156,
      left: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 48,
            color: Colors.yellow,
          ),
          Transform.rotate(
            angle: 90 * 3.14159265 / 180,
            child: Icon(
              Icons.change_history,
              size: 24,
              color: Colors.yellow,
            ),
          ),
          Icon(
            Icons.person,
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
      ),
    );
  }
}

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 230,
      child: Bubble(
        text: '移動手段/予算',
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}

class CheckboxTransportationSet extends StatefulWidget {
  const CheckboxTransportationSet({Key? key}) : super(key: key);

  @override
  State<CheckboxTransportationSet> createState() => _CheckboxListState();
}

class _CheckboxListState extends State<CheckboxTransportationSet> {
  final List<Map<String, dynamic>> _checkedMaps = [
    {'value': '車', 'checked': false},
    {'value': '自転車', 'checked': false},
    {'value': '徒歩', 'checked': false},
    {'value': '電車', 'checked': false},
    {'value': '地下鉄', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _checkedMaps
          .map((e) => CheckboxListTile(
                title: Text(e['value']),
                subtitle: Text(e['checked'] ? "ON" : "OFF"),
                value: e['checked'],
                onChanged: (bool? checkedValue) {
                  setState(() {
                    e['checked'] = checkedValue;
                  });
                },
              ))
          .toList(),
    );
  }
}

class CheckboxBudgetSet extends StatefulWidget {
  const CheckboxBudgetSet({Key? key}) : super(key: key);

  @override
  State<CheckboxBudgetSet> createState() => _CheckboxListBudgetState();
}

class _CheckboxListBudgetState extends State<CheckboxBudgetSet> {
  final List<Map<String, dynamic>> _checkedMaps = [
    {'value': '高め', 'checked': false},
    {'value': 'リーズナブル', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _checkedMaps
          .map((e) => CheckboxListTile(
                title: Text(e['value']),
                subtitle: Text(e['checked'] ? "ON" : "OFF"),
                value: e['checked'],
                onChanged: (bool? checkedValue) {
                  setState(() {
                    e['checked'] = checkedValue;
                  });
                },
              ))
          .toList(),
    );
  }
}
