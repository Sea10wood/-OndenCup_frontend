import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/models/ModelProvider.dart';
import 'package:fukutra_app/view/confirmuser_screen.dart';
import 'package:fukutra_app/view/forget_screen.dart';
import 'package:fukutra_app/view/home_screen.dart';
import 'package:fukutra_app/view/login_screen.dart';
import 'package:fukutra_app/view/resetpassword_screen.dart';
import 'package:fukutra_app/view/signup_screen.dart';
import 'package:fukutra_app/view/title_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'amplifyconfiguration.dart';
import 'package:fukutra_app/view/place_set.dart';

void main() async {
  // await dotenv.load(fileName: ".env"); //envファイルの読み込み
  WidgetsFlutterBinding.ensureInitialized(); //Flutter Engineと通信?
  await _configureAmplify();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _configureAmplify() async {
  try {
    // Create the API plugin.
    //
    // If `ModelProvider.instance` is not available, try running
    // `amplify codegen models` from the root of your project.
    final api = AmplifyAPI(modelProvider: ModelProvider.instance);

    // Create the Auth plugin.
    final auth = AmplifyAuthCognito();

    // Add the plugins and configure Amplify for your app.
    await Amplify.addPlugins([api, auth]);
    await Amplify.configure(amplifyconfig);
    print('!!!');
    print('Successfully configured');
    print('!!!');
  } on Exception catch (e) {
    print('!!!');
    print('Error configuring Amplify: $e');
    print('!!!');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: TitleScreen()),
          routes: [
            GoRoute(
              path: 'home',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: HomeScreen()),
            ),
            GoRoute(
              path: 'PlaceSet',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: PlaceSet()),
            ),
            GoRoute(
              path: 'login',
              pageBuilder: (context, state) =>
                  const MaterialPage(child: LoginScreen()),
            ),
            GoRoute(
                path: 'signup',
                pageBuilder: (context, state) => const MaterialPage(
                      child: SignupScreen(),
                    ),
                routes: [
                  GoRoute(
                      path: ':name/confirmuser',
                      pageBuilder: (context, state) => MaterialPage(
                          child: ConfirmUserScreen(
                              name: state.pathParameters['name']!.toString())))
                ]),
            //GoRoute(path: '/confirmuser', builder: (context, state) => const ConfirmUserScreen()),
            GoRoute(
                path: 'forget',
                pageBuilder: (context, state) =>
                    const MaterialPage(child: ForgetScreen()),
                routes: [
                  GoRoute(
                    path: ':name/resetpassword',
                    pageBuilder: (context, state) => MaterialPage(
                      child: ResetPasswordScreen(
                          name: state.pathParameters['name'].toString()),
                    ),
                  )
                ]),
          ]),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false, //debugバナーを消す
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFFffffff),
      ),
      //デフォルトの画面の色で見えないものができてしまうため一時的にコメント化
    );
  }
}
