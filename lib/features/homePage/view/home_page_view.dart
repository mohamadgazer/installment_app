import 'package:flutter/material.dart';

import '../widget/home_page_body.dart';

class HomePageView extends StatelessWidget {
  static const String id = "/homePageid";
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageBody(),
    );
  }
}
