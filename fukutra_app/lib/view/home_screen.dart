import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Title> titlelist = [];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // AndroidのAppBarの文字を中央寄せ.
        automaticallyImplyLeading: false, //戻るボタンを消す.
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              //縦に並べる
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (titlelist.length == 0)
                  const Text(
                    "No Plan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )
                else
                  ListView.builder(
                    itemCount: titlelist.length,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text(""), //titlelist[index].title
                        subtitle: Text(""), //titlelist[index].date
                      );
                    },
                  ),
              ]),
        ),
      ),
    );
  }
}
