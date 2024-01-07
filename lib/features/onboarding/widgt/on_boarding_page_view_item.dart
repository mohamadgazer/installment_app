import 'package:flutter/material.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  final int index;
  const OnBoardingPageViewItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("index: $index"),
        Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
        ),
        Text("index: $index"),
      ],
    );
  }
}
