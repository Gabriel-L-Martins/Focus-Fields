import 'package:flutter/material.dart';

class Farm extends StatelessWidget {
  const Farm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Farm')),
      body: const Center(child: Text('Farm Screen')),
    );
  }
}
