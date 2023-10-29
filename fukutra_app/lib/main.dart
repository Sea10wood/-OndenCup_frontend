import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/models/ModelProvider.dart';
import 'package:fukutra_app/router/route.dart';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'amplifyconfiguration.dart';

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

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProvider);
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false, //debugバナーを消す
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color(0xFFffffff),
      // ),
      //デフォルトの画面の色で見えないものができてしまうため一時的にコメント化
    );
  }
}
