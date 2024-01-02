import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_freezed/bloc/bloc_freezed_example.dart';

class BlocFreezedPage extends StatefulWidget {
  const BlocFreezedPage({super.key});

  @override
  State<BlocFreezedPage> createState() => _BlocFreezedPageState();
}

class _BlocFreezedPageState extends State<BlocFreezedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _addName,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: BlocListener<BlocFreezedExample, BlocFreezedState>(
        listener: (_, state) =>
            state.whenOrNull(notification: _showNotification),
        child: Column(
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
                      onTap: () => _removeName(names[index]),
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
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showNotification(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _addName() {
    context
        .read<BlocFreezedExample>()
        .add(const BlocFreezedEvent.addNames('Mateus'));
  }

  void _removeName(String name) {
    context.read<BlocFreezedExample>().add(
          BlocFreezedEvent.removeName(name),
        );
  }
}
