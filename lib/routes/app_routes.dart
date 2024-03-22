import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/home/home_page.dart';
import 'package:travel_app/pages/about/about.dart';
import 'package:travel_app/pages/change_your_password/changing_password_screen.dart';
import 'package:travel_app/pages/favorite_trip/favourite_trip.dart';
import 'package:travel_app/pages/help/help.dart';
import 'package:travel_app/pages/history/history.dart';
import 'package:travel_app/pages/notification/notification.dart';
import 'package:travel_app/pages/profile/profile.dart';
import 'package:travel_app/pages/setting/setting.dart';
import 'package:travel_app/pages/menu/menu.dart';
import '../pages/forgot_password/forgot_password.dart';
import '../pages/sign_up/sign_up.dart';
import '../pages/signin_default/signin_default.dart';
import '../pages/signin_error/signin_error.dart';
import '../pages/successful_screen/successful.dart';
import '../pages/Discovery/components/discovery_america.dart';
import '../pages/Discovery/components/discovery_asia.dart';
import '../pages/Discovery/components/discovery_europe.dart';
import '../pages/search_type_result/search_type_result.dart';
import '../pages/add_new_credit_card/add_new_credit_card.dart';
import '../pages/card_management/card_management.dart';
import '../pages/search_screen/search_screen.dart';
import '../pages/security/security_screen.dart';
import '../pages/place_detail/place_detail.dart';
import '../pages/onboarding/onboarding_screen.dart';
import '../pages/create_favorite_trip_list/create_favorite_trip_list.dart';
import '../pages/favorite_list/favorite_list.dart';
import '../pages/favorite_list_notification/favorite_list_notification.dart';
import '../pages/view/view_image.dart';
import '../pages/place_detail_2/place_detail_2.dart';

class AppRoutes {
  static const String initial = '/';
  static const String onboarding = '/onboarding';
  static const String signinDefault = '/signinDefault';
  static const String signinError = '/signinError';
  static const String signUp = '/signUp';
  static const String successful = '/successful';
  static const String forgotPassword = '/forgotPassword';
  static const String homePage = '/homePage';
  static const String searchTypeResult = '/searchTypeResult';
  static const String placeDetail = '/placeDetail';
  static const String placeDetail2 = '/placeDetail2';
  static const String discoveryAsia = '/discoveryAsia';
  static const String discoveryEurope = '/discoveryEurope';
  static const String discoveryAmerica = '/discoveryAmerica';
  static const String viewImage = '/viewImage';
  static const String favoriteTripList = '/favoriteTripList';
  static const String favoriteList = '/favoriteList';
  static const String favoriteListNotification = '/favoriteListNotification';
  static const String menu = '/menu';
  static const String profile = '/profile';
  static const String history = '/history';
  static const String notifications = '/notifications';
  static const String favoriteTrip = '/favoriteTrip';
  static const String about = '/about';
  static const String help = '/help';
  static const String setting = '/setting';
  static const String changingPassword = '/changingPassword';
  static const String securitySetting = '/securitySetting';
  static const String searchScreen = '/searchScreen';
  static const String cardManagement = '/cardManagement';
  static const String addnewCreditCard = '/addnewCreditCard';

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
      case AppRoutes.searchTypeResult:
        return CupertinoPageRoute(builder: (_) => const SearchTypeResult());
      case AppRoutes.placeDetail:
        return CupertinoPageRoute(builder: (_) => const PlaceDetail());
      case AppRoutes.placeDetail2:
        return CupertinoPageRoute(builder: (_) => const PlaceDetail2());
      case AppRoutes.discoveryAsia:
        return CupertinoPageRoute(builder: (_) => const DiscoveryAsia());
      case AppRoutes.discoveryEurope:
        return CupertinoPageRoute(builder: (_) => const DiscoveryEurope());
      case AppRoutes.discoveryAmerica:
        return CupertinoPageRoute(builder: (_) => const DiscoveryAmerica());
      case AppRoutes.viewImage:
        return CupertinoPageRoute(builder: (_) => const ViewImage());
      case AppRoutes.favoriteTripList:
        return CupertinoPageRoute(builder: (_) => const FavoriteTripList());
      case AppRoutes.favoriteList:
        return CupertinoPageRoute(builder: (_) => const FavoriteList());
      case AppRoutes.favoriteListNotification:
        return CupertinoPageRoute(
            builder: (_) => const FavoriteListNotification());
      case AppRoutes.menu:
        return CupertinoPageRoute(builder: (_) => const Menu());
      case AppRoutes.profile:
        return CupertinoPageRoute(builder: (_) => const Profile());
      case AppRoutes.changingPassword:
        return CupertinoPageRoute(
            builder: (_) => const ChangingPasswordScreen());
      case AppRoutes.history:
        return CupertinoPageRoute(builder: (_) => const History());
      case AppRoutes.notifications:
        return CupertinoPageRoute(builder: (_) => const Notifications());
      case AppRoutes.favoriteTrip:
        return CupertinoPageRoute(builder: (_) => const FavoriteTrip());
      case AppRoutes.about:
        return CupertinoPageRoute(builder: (_) => const About());
      case AppRoutes.help:
        return CupertinoPageRoute(builder: (_) => const Help());
      case AppRoutes.setting:
        return CupertinoPageRoute(builder: (_) => const Setting());
      case AppRoutes.securitySetting:
        return CupertinoPageRoute(builder: (_) => const SecurityScreen());
      case AppRoutes.searchScreen:
        return CupertinoPageRoute(builder: (_) => const SearchScreen());
      case AppRoutes.cardManagement:
        return CupertinoPageRoute(builder: (_) => const CardManagement());
      case AppRoutes.addnewCreditCard:
        return CupertinoPageRoute(builder: (_) => const AddnewCreditCard());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}

class UnknownPage extends StatelessWidget {
  const UnknownPage({
    Key? key,
    this.errorMessage,
  }) : super(key: key);

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Oops! No Page found with this name',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
