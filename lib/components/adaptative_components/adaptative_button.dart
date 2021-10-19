import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  final String? label;
  final Function()? onPressed;

  AdaptativeButton({
    this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label.toString()),
            onPressed: onPressed, 
            color: Theme.of(context).textTheme.button?.color,
            padding:const EdgeInsets.symmetric(horizontal: 20),
          )
        : ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label.toString(),
              style: TextStyle(color: Theme.of(context).textTheme.button?.color),
            ),
          );
  }
}
