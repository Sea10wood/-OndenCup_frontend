import 'package:flutter/material.dart';
import 'package:fukutra_app/view/place_set.dart';
import '../../component/talkBar.dart';

class PeopleSet extends StatelessWidget {
  const PeopleSet({Key? key}) : super(key: key);

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
            padding: EdgeInsets.only(
              left: isWideScreen ? 120 : 16,
              right: isWideScreen ? 120 : 16,
              top: 40,
              bottom: 0,
            ),
            child: Talk(),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 0, top: 40, bottom: 10),
            child: RichText(
              text: const TextSpan(
                text: '何人で旅行ですか？',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
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
              child: CheckboxPeopleSet(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 40,
              bottom: 0,
            ),
            child: RichText(
              text: const TextSpan(
                text: 'どんな雰囲気で旅行？',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
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
              child: CheckboxSituationSet(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 40, 120, 40),
            child: Container(
              color: Colors.blue[200],
              height: 40,
              child: ElevatedButton(onPressed: () {}, child: const Text('次へ')),
            ),
          )
        ],
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
          color: Colors.yellow,
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
      ],
    );
  }
}

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Bubble(
      text: '人数/雰囲気',
      textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}

class CheckboxPeopleSet extends StatefulWidget {
  const CheckboxPeopleSet({Key? key}) : super(key: key);

  @override
  State<CheckboxPeopleSet> createState() => _CheckboxListTilesState();
}

class _CheckboxListTilesState extends State<CheckboxPeopleSet> {
  final List<Map<String, dynamic>> _checkedMaps = [
    {'value': '1人', 'checked': false},
    {'value': '２人', 'checked': false},
    {'value': '３人', 'checked': false},
    {'value': '4-8人', 'checked': false},
    {'value': 'それ以上', 'checked': false},
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

class CheckboxSituationSet extends StatefulWidget {
  const CheckboxSituationSet({Key? key}) : super(key: key);

  @override
  State<CheckboxSituationSet> createState() => _CheckboxListSituationState();
}

class _CheckboxListSituationState extends State<CheckboxSituationSet> {
  final List<Map<String, dynamic>> _checkedMaps = [
    {'value': 'はしゃぐ！', 'checked': false},
    {'value': 'のんびり', 'checked': false},
    {'value': 'グルメ！', 'checked': false},
    {'value': '文化的に', 'checked': false},
    {'value': '観光メイン', 'checked': false},
    {'value': 'ふらふら', 'checked': false},
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
