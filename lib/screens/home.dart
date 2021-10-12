import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ildc_hw/components/my_container.dart';
import 'package:ildc_hw/components/my_text.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Widget _portraitMode() {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const FirstContainerRow(),
            const SizedBox(height: 15),
            const SecondContainerRow(),
            const SizedBox(height: 15),
            const ThirdContainerRow(),
            const SizedBox(height: 10),
            const FirstTextRow(),
            const SizedBox(height: 10),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 2.9,
              width: MediaQuery.of(context).size.width,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                      Spacer(
                        flex: 7,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _landscapeMode() {
    return SingleChildScrollView(
      child: SafeArea(
        left: false,
        child: Column(
          children: [
            const FirstContainerRow(),
            const SizedBox(height: 15),
            const SecondContainerRow(),
            const SizedBox(height: 15),
            const ThirdContainerRow(),
            const SizedBox(height: 10),
            const FirstTextRow(),
            const SizedBox(height: 10),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Container(
              // color: Colors.red,
              height: MediaQuery.of(context).size.height / 2.9,
              width: MediaQuery.of(context).size.width,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                      Spacer(
                        flex: 7,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyText(
                        fontsize: 40,
                        weight: FontWeight.w500,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.27,
                      ),
                      MyText(
                        fontsize: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else if (orientation == Orientation.landscape) {
            return _landscapeMode();
          } else {
            return Container(
              color: Colors.red,
            );
          }
        },
      ),
    );
  }
}

class FirstTextRow extends StatelessWidget {
  const FirstTextRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: const [
          MyText(
            fontsize: 40,
            weight: FontWeight.w400,
          ),
          MyText(
            fontsize: 30,
          ),
          MyText(
            fontsize: 40,
            weight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}
