import 'package:flutter/material.dart';
import 'package:fukutra_app/view/place_set.dart';
import '../../component/talkBar.dart';

class MoveSet extends StatelessWidget {
  const MoveSet({Key? key}) : super(key: key);

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
          CheckboxTransportation(),
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
          CheckboxBudget(),
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

class CheckboxTransportation extends StatefulWidget {
  const CheckboxTransportation({Key? key}) : super(key: key);

  @override
  State<CheckboxTransportation> createState() => _CheckboxTransportation();
}

class _CheckboxTransportation extends State<CheckboxTransportation> {
  final List<String> _valueList = ['車', '自転車', '徒歩', '電車', '地下鉄'];
  final List<bool> _checkedList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => CheckboxListTile(
            title: Text(_valueList[index]),
            subtitle: Text(_checkedList[index] ? "Set" : "OFF"),
            value: _checkedList[index],
            onChanged: (bool? checkedValue) {
              setState(() {
                _checkedList[index] = checkedValue!;
              });
            },
          ),
          separatorBuilder: (context, index) {
            return const Divider(height: 0.5);
          },
          itemCount: _valueList.length,
        ),
      ),
    );
  }
}

class CheckboxBudget extends StatefulWidget {
  const CheckboxBudget({Key? key}) : super(key: key);

  @override
  _CheckboxBudget createState() => _CheckboxBudget();
}

class _CheckboxBudget extends State<CheckboxBudget> {
  final List<String> _valueList = [
    '高め！',
    'リーズナブル',
  ];
  final List<bool> _checkedList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.separated(
          itemBuilder: (context, index) => CheckboxListTile(
            title: Text(_valueList[index]),
            subtitle: Text(_checkedList[index] ? "Set" : "OFF"),
            value: _checkedList[index],
            onChanged: (bool? checkedValue) {
              setState(() {
                _checkedList[index] = checkedValue!;
              });
            },
          ),
          separatorBuilder: (context, index) {
            return const Divider(height: 0.5);
          },
          itemCount: _valueList.length,
        ),
      ),
    );
  }
}
