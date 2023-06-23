import 'package:firebase_auth/firebase_auth.dart';

import '../../features/feature_widgets.dart';

class AppRoutes {
  final FirebaseAuth firebaseAuth;

  static const String home = '/';
  //static const String home = '/splash_screen';
  static const String login = '/sign_in';
  static const String register = '/sign_up';

  late final String initialRoute;

  AppRoutes(this.firebaseAuth) {
    if (firebaseAuth.currentUser == null) {
      initialRoute = login;
    } else {
      initialRoute = home;
    }
  }

  static get routes => {
        home: (context) => const HomeScreen(),
        //home: (context) => const SplashScreen(),
        login: (context) => const AuthScreen(),
        //register: (context) => Si(),
      };
}
