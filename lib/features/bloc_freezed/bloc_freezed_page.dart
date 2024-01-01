import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_freezed/bloc/bloc_freezed_example.dart';

class BlocFreezedPage extends StatelessWidget {
  const BlocFreezedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => addName(context),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocSelector<BlocFreezedExample, BlocFreezedState,
                List<String>>(
              selector: (state) {
                return state.maybeWhen(
                  data: (names) => names,
                  orElse: () => [],
                );
              },
              builder: (_, names) => ListView.builder(
                itemCount: names.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    onTap: () => removeName(context, names[index]),
                    leading: const FlutterLogo(),
                    title: Text(names[index]),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<BlocFreezedExample, BlocFreezedState>(
              builder: (_, state) {
                return state.maybeWhen(
                  initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void addName(BuildContext context) {
    context
        .read<BlocFreezedExample>()
        .add(const BlocFreezedEvent.addNames('Mateus'));
  }

  void removeName(BuildContext context, String name) {
    context.read<BlocFreezedExample>().add(BlocFreezedEvent.removeName(name));
  }
}
