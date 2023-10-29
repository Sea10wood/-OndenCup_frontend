import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view/place_set.dart';
import 'package:fukutra_app/view_model/people_set/people_set_screen_notifier.dart';
import 'package:go_router/go_router.dart';
import '../../component/talkBar.dart';

class PeopleSet extends ConsumerWidget {
  final List list;
  const PeopleSet({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final a = list[0];
    final b = list[1];
    final state = ref.watch(peopleSetScreenProvider);
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
            padding: const EdgeInsets.only(
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
              child: const CheckboxSituationSet(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 40, 120, 40),
            child: Container(
              color: Colors.blue[200],
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    context.go('/moveset', extra: [a, b, '1人', 'はしゃぐ！']);
                  },
                  child: const Text('次へ')),
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

class CheckboxPeopleSet extends ConsumerStatefulWidget {
  const CheckboxPeopleSet({Key? key}) : super(key: key);

  @override
  CheckboxListTilesState createState() => CheckboxListTilesState();
}

class CheckboxListTilesState extends ConsumerState<CheckboxPeopleSet> {
  var peopleindex = -1;

  final List<Map<String, dynamic>> _checkedMaps = [
    {'index': 0, 'value': '1人', 'checked': 'false'},
    {'index': 1, 'value': '２人', 'checked': 'false'},
    {'index': 2, 'value': '３人', 'checked': 'false'},
    {'index': 3, 'value': '4-8人', 'checked': 'false'},
    {'index': 4, 'value': 'それ以上', 'checked': 'false'},
  ];

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(peopleSetScreenProvider);
    return Column(
      children: _checkedMaps
          .map((e) => GestureDetector(
                onTap: () {
                  state = state.copyWith(people: e['value']);
                  setState(() {
                    peopleindex = e['index'];
                  });
                },
                child: CheckboxListTile(
                  title: Text(e['value']),
                  subtitle: Text(peopleindex == e['index'] ? "ON" : "OFF"),
                  value: peopleindex == e['index'],
                  onChanged: null,
                ),
              ))
          .toList(),
    );
  }
}

class CheckboxSituationSet extends ConsumerStatefulWidget {
  const CheckboxSituationSet({Key? key}) : super(key: key);

  @override
  CheckboxListSituationState createState() => CheckboxListSituationState();
}

class CheckboxListSituationState extends ConsumerState<CheckboxSituationSet> {
  var situationindex = -1;
  final List<Map<String, dynamic>> _checkedMaps = [
    {'index': 0, 'value': 'はしゃぐ！', 'checked': 'false'},
    {'index': 1, 'value': 'のんびり', 'checked': 'false'},
    {'index': 2, 'value': 'グルメ！', 'checked': 'false'},
    {'index': 3, 'value': '文化的に', 'checked': 'false'},
    {'index': 4, 'value': '観光メイン', 'checked': 'false'},
    {'index': 5, 'value': 'ふらふら', 'checked': 'false'},
  ];

  @override
  Widget build(BuildContext context) {
    var state = ref.watch(peopleSetScreenProvider);
    return Column(
      children: _checkedMaps
          .map((e) => GestureDetector(
                onTap: () {
                  state = state.copyWith(situation: e['value']);
                  setState(() {
                    situationindex = e['index'];
                  });
                },
                child: CheckboxListTile(
                  title: Text(e['value']),
                  subtitle: Text(situationindex == e['index'] ? "ON" : "OFF"),
                  value: situationindex == e['index'],
                  onChanged: null,
                ),
              ))
          .toList(),
    );
  }
}
