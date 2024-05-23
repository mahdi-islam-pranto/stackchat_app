import 'package:flutter/material.dart';

class Divider extends StatelessWidget {
  const Divider(
      {super.key,
      required int indent,
      required int endIndent,
      required int height,
      required Color color});

  @override
  Widget build(BuildContext context) {
    return const Divider(
        indent: 70,
        endIndent: 10,
        height: 0,
        color: Color.fromARGB(255, 16, 25, 31));
  }
}
