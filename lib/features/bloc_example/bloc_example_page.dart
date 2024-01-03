import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter_bloc_poc/widgets/input_widget.dart';
import 'package:flutter_bloc_poc/widgets/tile_widget.dart';

class BlocExamplePage extends StatefulWidget {
  const BlocExamplePage({super.key});

  @override
  State<BlocExamplePage> createState() => _BlocExamplePageState();
}

class _BlocExamplePageState extends State<BlocExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Example'),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          return previous is ExampleStateInitial && current is ExampleStateData;
        },
        listener: listenBloc,
        child: Column(
          children: [
            InputWidget(onSubmit: (value) => _addName(context, value)),
            BlocConsumer<ExampleBloc, ExampleState>(
              listener: (_, __) {},
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.names.length,
                      itemBuilder: (context, index) {
                        final String name = state.names[index];
                        return TileWidget(
                          name: name,
                          onTapRemove: () => removeName(name),
                        );
                      },
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: _isInitialState,
              builder: (context, isLoading) {
                if (isLoading) {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }

  void listenBloc(BuildContext context, ExampleState state) {
    if (state is ExampleStateInitial) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Carregando'),
        ),
      );
    }
    if (state is ExampleStateData) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Carregado !'),
        ),
      );
    }
  }

  void removeName(String name) {
    context.read<ExampleBloc>().add(ExampleRemoveNameEvent(name: name));
  }

  void _addName(BuildContext context, String name) {
    context.read<ExampleBloc>().add(ExampleAddNameEvent(name: name));
  }

  bool _isInitialState(ExampleState state) {
    if (state is ExampleStateInitial) {
      return true;
    }
    return false;
  }
}
