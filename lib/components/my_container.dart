import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final double height;
  final double? width;
  final Color? colors;
  const MyContainer({
    Key? key,
    required this.height,
    this.width,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: colors,
        ));
  }
}

class ThirdContainerRow extends StatelessWidget {
  const ThirdContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyContainer(
          height: 100,
          width: MediaQuery.of(context).size.width / 1.8,
          colors: const Color.fromRGBO(121, 63, 4, 1),
        ),
        MyContainer(
          height: 90,
          width: MediaQuery.of(context).size.width / 2.9,
          colors: const Color.fromRGBO(128, 96, 0, 1),
        ),
      ],
    );
  }
}

class SecondContainerRow extends StatelessWidget {
  const SecondContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyContainer(
          height: 90,
          width: MediaQuery.of(context).size.width / 3.4,
          colors: const Color.fromRGBO(29, 69, 135, 1),
        ),
        MyContainer(
          height: 90,
          width: MediaQuery.of(context).size.width / 3.6,
          colors: const Color.fromRGBO(32, 18, 77, 1),
        ),
        MyContainer(
          height: 90,
          width: MediaQuery.of(context).size.width / 3,
          colors: const Color.fromRGBO(77, 17, 48, 1),
        ),
      ],
    );
  }
}

class FirstContainerRow extends StatelessWidget {
  const FirstContainerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyContainer(
          colors: const Color.fromRGBO(92, 15, 0, 1),
          height: 120,
          width: MediaQuery.of(context).size.width / 2.2,
        ),
        MyContainer(
          colors: const Color.fromRGBO(40, 78, 19, 1),
          height: 120,
          width: MediaQuery.of(context).size.width / 2.2,
        ),
      ],
    );
  }
}