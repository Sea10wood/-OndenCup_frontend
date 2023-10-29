import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fukutra_app/view/confirmuser_screen.dart';
import 'package:fukutra_app/view/forget_screen.dart';
import 'package:fukutra_app/view/home_screen.dart';
import 'package:fukutra_app/view/login_screen.dart';
import 'package:fukutra_app/view/map_set.dart';
import 'package:fukutra_app/view/move_set.dart';
import 'package:fukutra_app/view/people_set.dart';
import 'package:fukutra_app/view/place_set.dart';
import 'package:fukutra_app/view/resetpassword_screen.dart';
import 'package:fukutra_app/view/signup_screen.dart';
import 'package:fukutra_app/view/title_screen.dart';
import 'package:go_router/go_router.dart';

Future<bool> isUserSignedIn() async {
  final result = await Amplify.Auth.fetchAuthSession();
  return result.isSignedIn;
}

final routerProvider = Provider<GoRouter>((ref) {
  // final auth = Auth();
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            const MaterialPage(child: TitleScreen()),
      ),
      GoRoute(
        path: '/home',
        pageBuilder: (context, state) =>
            const MaterialPage(child: HomeScreen()),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "false") {
            return '/';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/placeset',
        pageBuilder: (context, state) => const MaterialPage(child: PlaceSet()),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "false") {
            return '/';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/peopleset',
        pageBuilder: (context, state) =>
            MaterialPage(child: PeopleSet(list: state.extra as List)),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "false") {
            return '/';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/moveset',
        pageBuilder: (context, state) =>
            MaterialPage(child: MoveSet(list: state.extra as List)),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "false") {
            return '/';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/login',
        pageBuilder: (context, state) =>
            const MaterialPage(child: LoginScreen()),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "true") {
            return '/home';
          }
          return null;
        },
      ),
      GoRoute(
          path: '/signup',
          pageBuilder: (context, state) => const MaterialPage(
                child: SignupScreen(),
              ),
          redirect: (context, state) {
            final result = isUserSignedIn().toString();
            if (result == "true") {
              return '/home';
            }
            return null;
          },
          routes: [
            GoRoute(
                path: ':name/confirmuser',
                pageBuilder: (context, state) => MaterialPage(
                    child: ConfirmUserScreen(
                        name: state.pathParameters['name']!.toString())))
          ]),
      // GoRoute(
      //         path: 'PeopleSet',
      //         pageBuilder: (context, state) =>
      //             const MaterialPage(child: PeopleSet()),
      //       ),
      GoRoute(
        path: '/map',
        pageBuilder: (context, state) => const MaterialPage(child: MapSet()),
        redirect: (context, state) {
          final result = isUserSignedIn().toString();
          if (result == "false") {
            return '/';
          }
          return null;
        },
      ),
      GoRoute(
        path: '/forget',
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
        ],
      ),
    ],
  );
});
