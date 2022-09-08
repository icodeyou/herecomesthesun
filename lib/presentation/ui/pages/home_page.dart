import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';
import 'package:herecomesthesun/presentation/ui/widgets/widget_main_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(Strings.hello),
            MainButtonWidget(
              message: 'Hello',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
