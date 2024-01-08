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
  PageController controller = PageController(
    initialPage: 0,
    // viewportFraction: 1.0,
  );

  @override
  void initState() {
    controller.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView.builder(
      itemCount: onboardingData(context).length,
      controller: controller,
      onPageChanged: (value) {
        print(value);
        print("====================");
        if (value >= onboardingData(context).length) {
          controller.animateToPage(0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInCirc);
          setState(() {});
        }
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
