import 'package:flutter/material.dart';
import 'package:herecomesthesun/presentation/ui/constants/strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: const Center(
        child: Text(Strings.hello),
      ),
    );
  }
}
