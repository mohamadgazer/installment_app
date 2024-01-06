import 'package:flutter/material.dart';
import 'package:installment/core/helper/extensions.dart';
import 'package:installment/core/routing/routers.dart';

import '../widget/home_page_body.dart';

class HomePageView extends StatelessWidget {
  static const String id = "/homePageid";
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              onPressed: () {
                context.pushNamed(AppRoutes.setting);
                // AppRouter().generateRoute(AppRoutes.setting);
                // Navigator.of(context).pushNamed(AppRoutes.);
                // context.pushNamed(routeName);
                // Navigator.of(context).pushNamed(AppRoutes.home);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const HomePageBody(),
    );
  }
}
