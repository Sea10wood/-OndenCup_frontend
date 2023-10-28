import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/confirmuser/confirmuser_notifier.dart';
import 'package:go_router/go_router.dart';

class ConfirmUserScreen extends ConsumerStatefulWidget {
  final String name;
  const ConfirmUserScreen({Key? key, required this.name}) : super(key: key);
  @override
  ConfirmUserScreenState createState() => ConfirmUserScreenState();
}

class ConfirmUserScreenState extends ConsumerState<ConfirmUserScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
    final state = ref.watch(confirmUserScreenProvider); //値の読み込みのみ
    final confiemuserNotifier =
        ref.read(confirmUserScreenProvider.notifier); //値の書き込み
    final codeController = state.codeController;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.go('login');
            },
          ),
          title: const Text("ConfiemUser Screen"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                //縦に並べる
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "ConfiemUser",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false, //テキスト入力時に処理
                      controller: codeController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirmation Code',
                      ),
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      confiemuserNotifier.confirmUser(
                        widget.name,
                        state.codeController.text,
                        context,
                      );
                      //snackbar(message as String, context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('ConfiemUser'),
                  ),
                  //assets/googlelogo.png
                ]),
          ),
        )); //UIに表示させるボタンや背景の色、素材の表示
  }
}
