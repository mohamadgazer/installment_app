import 'package:flutter/material.dart';
import 'package:installment/core/app_local.dart';
import 'package:installment/generated/l10n.dart';

import 'features/homePage/view/home_page_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: S.delegate.supportedLocales,
      // locale: locale.locale,
      home: const HomePageView(),
    );
  }
}
