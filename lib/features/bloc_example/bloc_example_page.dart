import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_example/bloc/example_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocBuilder<ExampleBloc, ExampleState>(
        builder: (context, state) {
          if (state is ExampleStateData) {
            return ListView(
              children: state.names
                  .map(
                    (e) => ListTile(
                      title: Text(e),
                    ),
                  )
                  .toList(),
            );
          }
          if (state is ExampleStateInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
