import 'package:flutter/cupertino.dart';
import 'package:secondapp/features/Navigation/route_strings.dart';
import 'package:secondapp/features/create/create_account_screen.dart';
import 'package:secondapp/features/login/login_screen.dart';
import 'package:secondapp/features/welcome/welcome_screen.dart';

class AppRouter {
  static final navKey = GlobalKey<NavigatorState>();

  static Route appRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteStrings.base:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());

      case AppRouteStrings.loginScreen:
        return CupertinoPageRoute(builder: (_) => const LoginScreen());
      case AppRouteStrings.createAccountScreen:
        return CupertinoPageRoute(builder: (_) => const CreateAccountScreen());

      default:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
    }
  }

  static void pushNamed({required String routeName, Object? arg}) {
    navKey.currentState?.pushNamed(routeName, arguments: arg);
  }
}
