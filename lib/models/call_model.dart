import 'package:flutter/material.dart';

class CallModel {
  String name;
  Widget icon;
  String imageURL;
  String time;
  CallModel(
      {required this.name,
      required this.icon,
      required this.imageURL,
      required this.time});
}
