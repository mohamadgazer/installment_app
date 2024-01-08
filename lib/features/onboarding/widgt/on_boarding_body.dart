import 'package:flutter/material.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

import 'on_boarding_page_view_item.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: PageView.builder(
      itemBuilder: (context, index) {
        return OnBoardingPageViewItem(
          list: onboardingData(context),
          index: index,
        );
      },
    ));
  }
}
