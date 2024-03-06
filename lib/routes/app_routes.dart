import 'package:flutter/cupertino.dart';
import 'package:travel_app/pages/home/home_page.dart';
import '../pages/auth/components/forgot_password.dart';
import '../pages/auth/components/sign_up.dart';
import '../pages/auth/components/signin_default.dart';
import '../pages/auth/components/signin_error.dart';
import '../pages/auth/components/successful.dart';
import '../pages/onboarding/onboarding_screen.dart';

class AppRoutes {
  static const String initial = '/';
  static const String onboarding = '/onboarding';
  static const String signinDefault = '/signinDefault';
  static const String signinError = '/signinError';
  static const String signUp = '/signUp';
  static const String successful = '/successful';
  static const String forgotPassword = '/forgotPassword';
  static const String homePage = '/homePage';

  static Route<dynamic>? onGenerate(RouteSettings settings) {
    final route = settings.name;
    switch (route) {
      case AppRoutes.initial:
        return CupertinoPageRoute(builder: (_) => const OnboardingScreen());
      case AppRoutes.signinDefault:
        return CupertinoPageRoute(builder: (_) => SignInDefault());
      case AppRoutes.signinError:
        return CupertinoPageRoute(builder: (_) => const SignInError());
      case AppRoutes.signUp:
        return CupertinoPageRoute(builder: (_) => const SignUp());
      case AppRoutes.successful:
        return CupertinoPageRoute(builder: (_) => const Successful());
      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => ForgotPassword());
      case AppRoutes.homePage:
        return CupertinoPageRoute(builder: (_) => const HomePage());
    }
    return null;
  }

  ///TODO: Ekhane ekta error route dorkar
}
