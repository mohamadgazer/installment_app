import 'package:flutter/material.dart';
import 'package:installment/core/app_local.dart';
import 'package:installment/core/routing/app_routers.dart';
import 'package:installment/generated/l10n.dart';

import 'features/homePage/view/home_page_view.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale("ar"),
      initialRoute: HomePageView.id,
    );
  }
}
