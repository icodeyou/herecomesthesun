import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/styles/constants.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_main_button.dart';

class ErrorDetailsWidget extends StatelessWidget {
  const ErrorDetailsWidget(
      {required this.errorDebugMessage, Key? key, this.retryCallback})
      : super(key: key);

  final String errorDebugMessage;
  final VoidCallback? retryCallback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(UI.defaultPadding),
          child: Column(
            children: [
              const Text(Strings.errorDefault),
              Text(
                errorDebugMessage,
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: UI.defaultPadding),
              if (retryCallback != null)
                MainButtonWidget(
                  message: Strings.retryButton,
                  onPressed: retryCallback,
                )
            ],
          )),
    );
  }
}
