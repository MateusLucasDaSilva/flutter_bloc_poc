import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/count_bloc/count_bloc.dart';
import 'package:flutter_bloc_poc/count_bloc/count_bloc_page.dart';
import 'package:flutter_bloc_poc/count_cubit/count_cubit_page.dart';
import 'package:flutter_bloc_poc/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      routes: {
        '/cubit': (_) => BlocProvider(
              create: (_) => CountBloc(),
              child: const CountCubitPage(),
            ),
        '/bloc': (_) => BlocProvider(
            create: (_) => CountBloc(), child: const CountBlocPage()),
      },
      home: const HomePage(),
    );
  }
}
