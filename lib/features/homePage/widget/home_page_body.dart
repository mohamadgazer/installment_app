import 'package:flutter/material.dart';
import 'package:installment/generated/l10n.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(S.of(context).save_data),

    );
  }
}
