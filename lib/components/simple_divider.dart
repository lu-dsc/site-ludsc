import 'package:flutter/material.dart';

class SimpleDivider extends StatelessWidget {
  const SimpleDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      width: 100.0,
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}
