import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum SnackType { error, info, success }

class Snack {
  static void showSnack(BuildContext context, String message) {
    if (kDebugMode) {
      print("Snack : $message");
    }
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
