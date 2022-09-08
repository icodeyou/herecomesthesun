import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_main_button.dart';

class ErrorDetailsWidget extends StatelessWidget {
  const ErrorDetailsWidget(
      {required this.errorMessage, Key? key, this.retryCallback})
      : super(key: key);

  final String errorMessage;
  final VoidCallback? retryCallback;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        const Text(Strings.errorDefault),
        if (kDebugMode) Text(errorMessage),
        if (retryCallback != null)
          MainButtonWidget(
            message: Strings.retryButton,
            onPressed: retryCallback,
          )
      ],
    ));
  }
}
