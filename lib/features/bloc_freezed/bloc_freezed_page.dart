import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_freezed/bloc/bloc_freezed_example.dart';
import 'package:flutter_bloc_poc/widgets/input_widget.dart';
import 'package:flutter_bloc_poc/widgets/tile_widget.dart';

class BlocFreezedPage extends StatefulWidget {
  const BlocFreezedPage({super.key});

  @override
  State<BlocFreezedPage> createState() => _BlocFreezedPageState();
}

class _BlocFreezedPageState extends State<BlocFreezedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc com Freezed'),
      ),
      body: BlocListener<BlocFreezedExample, BlocFreezedState>(
        listener: (_, state) =>
            state.whenOrNull(notification: _showNotification),
        child: Column(
          children: [
            InputWidget(onSubmit: _addName),
            BlocBuilder<BlocFreezedExample, BlocFreezedState>(
              builder: (_, state) => state.maybeWhen(
                data: (names) => Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (_, index) {
                      return TileWidget(
                        name: names[index],
                        onTapRemove: () => _removeName(names[index]),
                      );
                    },
                  ),
                ),
                loading: () => const Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
                orElse: () => const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showNotification(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _addName(String name) {
    context.read<BlocFreezedExample>().add(BlocFreezedEvent.addNames(name));
  }

  void _removeName(String name) {
    context.read<BlocFreezedExample>().add(
          BlocFreezedEvent.removeName(name),
        );
  }
}
