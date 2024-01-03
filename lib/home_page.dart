import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bloc Poc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Item(
              onPressed: () => Navigator.pushNamed(context, '/bloc_example'),
              child: const Text('Bloc '),
            ),
            Item(
              onPressed: () => Navigator.pushNamed(context, '/bloc_freezed'),
              child: const Text('Bloc com freezed'),
            ),
            Item(
              onPressed: () => Navigator.pushNamed(context, '/bloc_cubit'),
              child: const Text('Bloc com Cubit'),
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final Function() onPressed;
  final Widget child;
  const Item({super.key, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(13),
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 100,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(14, 27, 58, 72),
              Color.fromARGB(14, 147, 167, 176),
            ],
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
