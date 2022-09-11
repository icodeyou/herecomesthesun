import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';

class MainButtonWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onPressed;

  const MainButtonWidget({super.key, required this.message, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(UI.defaultPadding),
        child: Text(
          message,
        ),
      ),
    );
  }
}
