import 'package:clean_architecture/presentation/forget_password/forget_password_view.dart';
import 'package:clean_architecture/presentation/login/login_view.dart';
import 'package:clean_architecture/presentation/main/main_view.dart';
import 'package:clean_architecture/presentation/onboarding/view/on_boarding_view.dart';
import 'package:clean_architecture/presentation/register/register_view.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:clean_architecture/presentation/splash/splash_view.dart';
import 'package:clean_architecture/presentation/store_details/store_details_view.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String onBoardingRoute = "/onBoarding";
  static const String mainRoute = "/main";
  static const String storeDetailshRoute = "/storeDetails";
}



class RouteGenerator{
  static Route<dynamic>? getRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeDetailshRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic>? undefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
    Scaffold(
      appBar: AppBar(title:const Text(AppStrings.noRouteFound),),
      body: const Center(child:  Text(AppStrings.noRouteFound),),
    )
    );
  }

}