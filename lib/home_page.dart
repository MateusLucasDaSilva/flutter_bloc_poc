import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/bloc_example'),
              child: const Text('Bloc '),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/bloc_freezed'),
              child: const Text('Bloc com freezed'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/bloc_cubit'),
              child: const Text('Bloc com Cubit'),
            ),
          ],
        ),
      ),
    );
  }
}
