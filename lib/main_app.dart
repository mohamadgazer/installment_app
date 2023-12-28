import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_local.dart';
import 'package:installment/core/routing/app_routers.dart';
import 'package:installment/generated/l10n.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: localizationsDelegates,
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale("ar"),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
