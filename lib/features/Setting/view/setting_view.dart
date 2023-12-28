import 'package:flutter/material.dart';

import '../widget/home_page_body.dart';

class SettingPageView extends StatelessWidget {
  static const String id = "/settingid";
  const SettingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageBody(),
    );
  }
}
