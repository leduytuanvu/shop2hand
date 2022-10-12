import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String? text;
  const ButtonWidget({super.key, required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(widget.text!),
      onPressed: () {},
    );
  }
}
