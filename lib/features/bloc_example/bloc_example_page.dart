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
      floatingActionButton: IconButton(
        onPressed: () => _addName(context),
        icon: const Icon(Icons.add),
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          return previous is ExampleStateInitial && current is ExampleStateData;
        },
        listener: (context, state) {
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
        },
        child: Column(
          children: [
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
            BlocConsumer<ExampleBloc, ExampleState>(
              listener: (context, state) {},
              builder: (_, state) {
                if (state is ExampleStateData) {
                  return SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.names.length,
                      itemBuilder: (context, index) {
                        final String name = state.names[index];
                        return ListTile(
                          onTap: () {
                            context
                                .read<ExampleBloc>()
                                .add(ExampleRemoveNameEvent(name: name));
                          },
                          title: Text('# $name'),
                        );
                      },
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
            BlocBuilder<ExampleBloc, ExampleState>(
              builder: (context, state) {
                if (state is ExampleStateData) {
                  return SizedBox(
                    height: 300,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.names.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text('& ${state.names[index]}'),
                      ),
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

  void _addName(BuildContext context) {
    context.read<ExampleBloc>().add(ExampleAddNameEvent(name: 'Mateus'));
  }

  bool _isInitialState(ExampleState state) {
    if (state is ExampleStateInitial) {
      return true;
    }
    return false;
  }
}
