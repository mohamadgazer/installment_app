import 'package:flutter/material.dart';

import 'features/homePage/view/home_page_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageView(),
    );
  }
}
