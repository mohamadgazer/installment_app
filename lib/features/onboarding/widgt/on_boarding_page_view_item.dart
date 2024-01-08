import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/helper/sized_box_helper.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  final int index;
  final List<OnBoardingModel> list;
  const OnBoardingPageViewItem({
    super.key,
    required this.index,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300.w,
          height: 300.h,
          decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(list[index].image),
              )),
        ),
        SizedBoxHelper.verticalBox(50),
        Text(list[index].text),
      ],
    );
  }
}
