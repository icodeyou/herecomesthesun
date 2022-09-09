import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';

class Decorations {
  static BoxDecoration box = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(UI.boxCornerRadius)),
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        offset: const Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}
