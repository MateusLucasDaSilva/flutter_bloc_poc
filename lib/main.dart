import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_example/bloc_example_page.dart';
import 'package:flutter_bloc_poc/features/bloc_freezed/bloc/bloc_freezed_example.dart';
import 'package:flutter_bloc_poc/features/bloc_freezed/bloc_freezed_page.dart';
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
        '/bloc_example': (_) => BlocProvider(
              create: (_) => ExampleBloc()..add(ExampleFindNameEvent()),
              child: const BlocExamplePage(),
            ),
        '/bloc_freezed': (_) => BlocProvider(
              create: (_) =>
                  BlocFreezedExample()..add(const BlocFreezedEvent.findNames()),
              child: const BlocFreezedPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
