import 'package:flutter/material.dart';
import 'package:installment/core/helper/sized_box_helper.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

import 'on_boarding_image.dart';
import 'on_boarding_page_view_dots.dart';
import 'onboarding_text.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  final int index;
  final int currentPage;
  final List<OnBoardingModel> list;
  const OnBoardingPageViewItem({
    super.key,
    required this.index,
    required this.list,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnBoardingImage(list: list, index: index),
        SizedBoxHelper.verticalBox(20),
        OnboardingText(list: list, index: index),
        SizedBoxHelper.verticalBox(50),
        OnBoardingPageViewDots(list: list, currentPage: currentPage)
      ],
    );
  }
}
