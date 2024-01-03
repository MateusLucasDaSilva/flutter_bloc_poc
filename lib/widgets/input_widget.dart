import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final Function(String) onSubmit;
  const InputWidget({
    super.key,
    required this.onSubmit,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _nameEC = TextEditingController();
  final _focusName = FocusNode();

  @override
  void dispose() {
    _nameEC.dispose();
    _focusName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        controller: _nameEC,
        focusNode: _focusName,
        decoration: InputDecoration(
          hintText: 'Digite um nome...',
          suffix: GestureDetector(
            onTap: submitName,
            child: const Icon(Icons.send),
          ),
        ),
      ),
    );
  }

  Future<void> submitName() async {
    widget.onSubmit(_nameEC.text);
    _nameEC.clear();
    _focusName.unfocus();
  }
}
