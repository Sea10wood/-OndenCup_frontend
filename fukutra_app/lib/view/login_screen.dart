import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view_model/login/login_screen_notifier.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(loginScreenProvider); //値の読み込みのみ
    final notifier = ref.read(loginScreenProvider.notifier);
    final nameController = state.nameController;
    final passwordController = state.passwordController;
    final visiableController = state.visiable;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true, // AndroidのAppBarの文字を中央寄せ.
          automaticallyImplyLeading: false, //戻るボタンを消す.
          title: const Text('Login Screen'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
                //縦に並べる
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login",
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
                        labelText: 'Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    child: TextFormField(
                      obscureText: visiableController,
                      keyboardType: TextInputType.visiblePassword,
                      autofocus: false, //テキスト入力時に処理
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            notifier.changeVisiable();
                          },
                          icon: Icon(visiableController
                              ? Icons.visibility_off
                              : Icons.visibility),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      notifier.signInUser(state.nameController.text,
                          state.passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () {
                            context.go('/signup');
                          },
                          child: const Text("アカウントを作成")),
                      TextButton(
                          onPressed: () {
                            context.go('/forget');
                          },
                          child: const Text("パスワードを忘れた")),
                    ],
                  ),
                  //assets/googlelogo.png
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed:
                            () {}, //_bar("googlesignin完了"),//_googlesubmit,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const CircleBorder(),
                        ),
                        child: const ClipOval(
                            child: Image(
                          width: 30,
                          image: AssetImage('assets/images/googlelogo.png'),
                          fit: BoxFit.contain,
                        )),
                      ),
                    ],
                  ),
                ]),
          ),
        )); //UIに表示させるボタンや背景の色、素材の表示
  }
}
