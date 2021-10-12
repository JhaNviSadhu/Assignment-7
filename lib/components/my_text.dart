import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final double? fontsize;
  final FontWeight? weight;
  const MyText({
    Key? key,
    this.fontsize,
    this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "TEXT",
      style: TextStyle(
        fontSize: fontsize,
        color: Colors.black,
        fontWeight: weight,
      ),
      softWrap: true,
    );
  }
}
