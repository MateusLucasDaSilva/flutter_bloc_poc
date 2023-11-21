import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/count_bloc/count_bloc.dart';

class CountBlocPage extends StatelessWidget {
  const CountBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CountBloc, CountState>(
              builder: (bloc, state) => Text(
                'Count: ${state.count}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  onPressed: () {
                    context.read<CountBloc>().add(
                          CountIncrement(),
                        );
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton.filled(
                  onPressed: () {
                    context.read<CountBloc>().add(
                          CountDecrement(),
                        );
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
