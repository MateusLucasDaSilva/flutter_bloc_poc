import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home '),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/cubit'),
              child: const Text('Cubit'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/bloc'),
              child: const Text('Bloc'),
            ),
          ],
        ),
      ),
    );
  }
}
