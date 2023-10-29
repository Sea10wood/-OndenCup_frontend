import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/forget/forget_screen_notifier.dart';
import 'package:go_router/go_router.dart';

class ForgetScreen extends ConsumerWidget {
  const ForgetScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(forgetScreenProvider); //値の読み込みのみ
    final notifier = ref.read(forgetScreenProvider.notifier); //値の書き込み
    final nameController = state.nameController;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              context.go('/login');
            },
          ),
          title: const Text("Forget Screen"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                //縦に並べる
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Forget",
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
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'name',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      notifier.resetPassword(state.nameController.text);
                      context.go(
                          '/forget/${state.nameController.text}/resetpassword');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Send Email'),
                  ),
                  //assets/googlelogo.png
                ]),
          ),
        )); //UIに表示させるボタンや背景の色、素材の表示
  }
}
