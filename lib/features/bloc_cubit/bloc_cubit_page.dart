import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_poc/features/bloc_cubit/cubit/bloc_cubit_example.dart';
import 'package:flutter_bloc_poc/widgets/input_widget.dart';
import 'package:flutter_bloc_poc/widgets/tile_widget.dart';

class BlocCubitPage extends StatefulWidget {
  const BlocCubitPage({super.key});

  @override
  State<BlocCubitPage> createState() => _BlocCubitPageState();
}

class _BlocCubitPageState extends State<BlocCubitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc com Cubit'),
      ),
      body: Column(
        children: [
          InputWidget(onSubmit: _addName),
          BlocBuilder<BlocCubitExample, BlocCubitState>(
            builder: (_, state) => state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
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
            ),
          ),
        ],
      ),
    );
  }

  void _addName(String name) {
    context.read<BlocCubitExample>().addName(name);
  }

  void _removeName(String name) {
    context.read<BlocCubitExample>().removeName(name);
  }
}
