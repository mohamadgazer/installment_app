import 'package:flutter/material.dart';

import '../widgt/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget {
  static const String id = "/onboarding";
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
