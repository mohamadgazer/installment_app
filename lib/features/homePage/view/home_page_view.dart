import 'package:flutter/material.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/features/Setting/view/setting_view.dart';

import '../widget/home_page_body.dart';

class HomePageView extends StatelessWidget {
  static const String id = "/homePageid";
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.pushNamed(SettingPageView.id);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const HomePageBody(),
    );
  }
}
