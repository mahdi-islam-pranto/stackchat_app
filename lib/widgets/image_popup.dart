import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  String image;
  ImageDialog({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
