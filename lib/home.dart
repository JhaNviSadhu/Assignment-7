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
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              const FirstContainerRow(),
              const SizedBox(height: 15),
              const SecondContainerRow(),
              const SizedBox(height: 15),
              const ThirdContainerRow(),
              const SizedBox(height: 20),
              const FirstTextRow(),
              const SizedBox(height: 15),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              Spacer(),
              Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height / 2.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MyText(
                          fontsize: 40,
                          weight: FontWeight.w500,
                        ),
                        SizedBox(height: 60),
                        MyText(
                          fontsize: 30,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        MyText(
                          fontsize: 50,
                          weight: FontWeight.w500,
                        ),
                        MyText(
                          fontsize: 30,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        MyText(
                          fontsize: 50,
                          weight: FontWeight.w500,
                        ),
                        SizedBox(height: 30),
                        MyText(
                          fontsize: 30,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        MyText(
          fontsize: 50,
          weight: FontWeight.w400,
        ),
        MyText(
          fontsize: 30,
        ),
        MyText(
          fontsize: 50,
          weight: FontWeight.w400,
        ),
      ],
    );
  }
}
