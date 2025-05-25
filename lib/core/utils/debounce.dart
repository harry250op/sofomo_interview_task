import 'dart:async';

import 'package:flutter/material.dart';

class DeBouncer {
  int? milliseconds;
  VoidCallback? action;

  static Timer? timer;

  static void run(VoidCallback action, {Duration? duration}) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(
      duration ?? Duration(milliseconds: Duration.millisecondsPerSecond),
      action,
    );
  }
}
