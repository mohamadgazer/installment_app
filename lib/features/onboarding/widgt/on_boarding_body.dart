import 'package:flutter/material.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController controller = PageController(initialPage: 0);

  @override
  void initState() {
    controller.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView.builder(
      controller: controller,
      onPageChanged: (value) {
        if (value > onboardingData(context).length) {}
      },
      itemBuilder: (context, index) {
        return OnBoardingPageViewItem(
          list: onboardingData(context),
          index: index,
        );
      },
    ));
  }
}
