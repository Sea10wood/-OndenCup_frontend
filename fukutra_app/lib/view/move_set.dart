import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view/place_set.dart';
import '../../component/talkBar.dart';

class MoveSet extends ConsumerWidget {
  final List list;
  const MoveSet({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth >= 600;
    final a = list[0];
    final b = list[1];
    final c = list[2];
    final d = list[3];
    //final state = ref.watch(moveSetScreenProvider);
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
          Padding(
            padding: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 40,
              bottom: 0,
            ),
            child: RichText(
              text: const TextSpan(
                text: '基本的な移動手段！',
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
              top: 20,
              bottom: 0,
            ),
            child: Container(
              child: CheckboxTransportationSet(),
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
          ),
          Padding(
            padding: EdgeInsets.only(
              left: isWideScreen ? 120 : 16,
              right: isWideScreen ? 120 : 16,
              top: 20,
              bottom: 0,
            ),
            child: Container(
              child: CheckboxBudgetSet(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(120, 40, 120, 40),
            child: Container(
              color: Colors.blue[200],
              height: 40,
              child: ElevatedButton(
                  onPressed: () {
                    print("!!!!!!!!!!!!!!!!!");
                    print("a:$a,b:$b,c:$c,d:$d,transport:リーズナブル,budget:車");
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
            Icons.drive_eta,
            size: 48,
            color: Colors.blue,
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

class CheckboxTransportationSet extends ConsumerStatefulWidget {
  const CheckboxTransportationSet({Key? key}) : super(key: key);

  @override
  CheckboxTransportationSetState createState() =>
      CheckboxTransportationSetState();
}

class CheckboxTransportationSetState
    extends ConsumerState<CheckboxTransportationSet> {
  var transportationindex = -1;
  final List<Map<String, dynamic>> _checkedMaps = [
    {'index': 0, 'value': '車', 'checked': false},
    {'index': 1, 'value': '自転車', 'checked': false},
    {'index': 2, 'value': '徒歩', 'checked': false},
    {'index': 3, 'value': '電車', 'checked': false},
    {'index': 4, 'value': '地下鉄', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    //var state = ref.watch(moveSetScreenProvider);
    return Column(
      children: _checkedMaps
          .map((e) => GestureDetector(
                onTap: () {
                  //state = state.copyWith(transport: e['value']);
                  setState(() {
                    transportationindex = e['index'];
                  });
                },
                child: CheckboxListTile(
                  title: Text(e['value']),
                  subtitle:
                      Text(transportationindex == e['index'] ? "ON" : "OFF"),
                  value: transportationindex == e['index'],
                  onChanged: null,
                ),
              ))
          .toList(),
    );
  }
}

class CheckboxBudgetSet extends ConsumerStatefulWidget {
  const CheckboxBudgetSet({Key? key}) : super(key: key);

  @override
  CheckboxListBudgetState createState() => CheckboxListBudgetState();
}

class CheckboxListBudgetState extends ConsumerState<CheckboxBudgetSet> {
  var budgetindex = -1;
  final List<Map<String, dynamic>> _checkedMaps = [
    {'index': 0, 'value': '高め', 'checked': false},
    {'index': 1, 'value': 'リーズナブル', 'checked': false},
  ];

  @override
  Widget build(BuildContext context) {
    //var state = ref.watch(moveSetScreenProvider);
    return Column(
      children: _checkedMaps
          .map((e) => GestureDetector(
                onTap: () {
                  //state = state.copyWith(budget: e['value']);
                  setState(() {
                    budgetindex = e['index'];
                  });
                },
                child: CheckboxListTile(
                  title: Text(e['value']),
                  subtitle: Text(budgetindex == e['index'] ? "ON" : "OFF"),
                  value: budgetindex == e['index'],
                  onChanged: null,
                ),
              ))
          .toList(),
    );
  }
}
