import 'package:flutter/material.dart';

Future<String> showTime(context) async {
  var time = await showTimePicker(
    context: context,
    initialTime: TimeOfDay.now(),
  );
  print('Time => $time');
  final localizations = MaterialLocalizations.of(context);
  if (time != null) {
    return localizations.formatTimeOfDay(time).toString();
  } else {
    return 'please,choose time';
  }
}
