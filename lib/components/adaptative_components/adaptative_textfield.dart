import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? label;
  final void Function(String)? onSubmitted;

  AdaptativeTextField({
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onSubmitted,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoTextField(
      keyboardType: keyboardType,
      controller: controller,
      onSubmitted: onSubmitted,
      placeholder: label,
      padding: const EdgeInsets.only(bottom: 10),
    ) : TextField(
      keyboardType: keyboardType,
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: InputDecoration(labelText: label),
    );
  }
}
