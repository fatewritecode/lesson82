import 'package:flutter/material.dart';

class DataProviderImherited extends InheritedWidget {
  // содержит value
  final bool value;
  // получает value
  const DataProviderImherited(
      {Key? key, required this.value, required Widget child})
      : super(key: key, child: child);

  // указывает было ли обновление данных в InheritedWidget
  @override
  bool updateShouldNotify(DataProviderImherited oldWidget) {
    // сравниваем value с предыдущим value если вернёт false значит ничего неизменилось

    return value != oldWidget.value;
  }
}
