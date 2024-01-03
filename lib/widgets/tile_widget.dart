import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  final String name;
  final Function() onTapRemove;
  const TileWidget({
    super.key,
    required this.name,
    required this.onTapRemove,
  });

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('# ${widget.name}'),
      leading: const FlutterLogo(),
      trailing: GestureDetector(
        onTap: onTap,
        child: const Icon(
          Icons.remove_circle_outline_sharp,
        ),
      ),
    );
  }

  void onTap() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Deseja Remover ${widget.name}'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          children: [
            TextButton(
                onPressed: () {
                  widget.onTapRemove();
                  Navigator.of(context).pop();
                },
                child: const Text('Sim')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Não')),
          ],
        );
      },
    );
  }
}
