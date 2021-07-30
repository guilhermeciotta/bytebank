import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final controller;
  final label;
  final dica;
  final icone;

  Editor({this.controller, this.label, this.dica, this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: label,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}