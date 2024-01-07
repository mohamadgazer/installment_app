import 'package:flutter/material.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/features/Setting/view/setting_view.dart';
import 'package:installment/features/homePage/view/home_page_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.home:
        return MaterialPageRoute(
          builder: (context) {
            return const HomePageView();
          },
        );

      case AppRoute.setting:
        return MaterialPageRoute(
          builder: (context) {
            return const SettingPageView();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('no route defined for ${settings.name}'),
              ),
              body: Container(),
            );
          },
        );
    }
  }
}
