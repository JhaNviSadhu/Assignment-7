import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: const [
                Positioned(
                  top: 200,
                  right: 120,
                  child: EditedContainer(
                    height: 120,
                    width: 140,
                    color: Color.fromRGBO(211, 223, 227, 1),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: EditedContainer(
                    height: 120,
                    width: 300,
                    color: Color.fromRGBO(249, 230, 208, 1),
                    widget: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Jhanvi  ",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  right: 200,
                  child: EditedContainer(
                    height: 120,
                    width: 120,
                    color: Color.fromRGBO(221, 233, 213, 1),
                  ),
                ),
                Positioned(
                  top: 70,
                  right: 280,
                  child: EditedContainer(
                    height: 120,
                    width: 120,
                    color: Color.fromRGBO(233, 156, 155, 1),
                  ),
                ),
                Positioned(
                  top: 275,
                  right: 20,
                  child: EditedContainer(
                    height: 150,
                    width: 150,
                    color: Color.fromRGBO(120, 156, 226, 1),
                  ),
                ),
                Positioned(
                  top: 410,
                  right: 130,
                  child: EditedContainer(
                    height: 120,
                    width: 120,
                    color: Color.fromRGBO(140, 124, 191, 1),
                  ),
                ),
                Positioned(
                  top: 540,
                  right: 250,
                  child: EditedContainer(
                    height: 120,
                    width: 150,
                    color: Color.fromRGBO(206, 168, 188, 1),
                  ),
                ),
                Positioned(
                  top: 460,
                  right: 170,
                  child: EditedContainer(
                    height: 120,
                    width: 155,
                    color: Color.fromRGBO(223, 186, 177, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditedContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final Widget? widget;
  const EditedContainer({
    Key? key,
    required this.height,
    required this.width,
    this.color,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
      child: widget,
    );
  }
}
