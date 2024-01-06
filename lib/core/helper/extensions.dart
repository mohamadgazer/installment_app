import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  // الدالة للانتقال إلى شاشة جديدة باستخدام الاسم (Navigator.pushNamed)
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  // الدالة للانتقال إلى الشاشة السابقة (Navigator.pop)
  void pop() {
    Navigator.of(this).pop();
  }

  // الدالة للانتقال إلى الشاشة الرئيسية (Navigator.pushNamedAndRemoveUntil)
  void popUntil(String routeName) {
    Navigator.of(this).popUntil(ModalRoute.withName(routeName));
  }

  // الدالة لاستبدال الشاشة الحالية بشاشة جديدة (Navigator.pushReplacementNamed)
  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }
}
