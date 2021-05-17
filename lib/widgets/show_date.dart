import 'package:flutter/material.dart';

Future<String> showDate(context) async {
  var date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2050),
      routeSettings: RouteSettings(),
      useRootNavigator: true);
  print('Date => $date');
  if (date != null) {
    return date.toString().substring(0, 11);
  } else {
    return 'please,choose date';
  }
}
