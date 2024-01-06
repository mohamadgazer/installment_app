import 'package:flutter/material.dart';
import 'package:installment/core/helper/extensions.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/generated/l10n.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(S.of(context).select_theme),
          ElevatedButton(
              onPressed: () {
                context.pushNamed(AppRoutes.home);
              },
              child: const Text("click me plase"))
        ],
      ),
    );
  }
}
