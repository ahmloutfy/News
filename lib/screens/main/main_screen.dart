import 'package:flutter/material.dart';
import 'package:news/screens/main/components/header.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}
