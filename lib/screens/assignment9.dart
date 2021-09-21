import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ildc_hw/screens/second_page.dart';

class Assignment9 extends StatefulWidget {
  const Assignment9({Key? key}) : super(key: key);

  @override
  _Assignment9State createState() => _Assignment9State();
}

class _Assignment9State extends State<Assignment9> {
  var controller = TextEditingController();
  bool isRemove = false;
  List data = [
    "Flutter",
    "Dart",
    "Java",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.navigate_next_rounded,
            size: 40,
          ),
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(),
              ))),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (controller.text.isNotEmpty) {
                              data.add(controller.text);
                              print(data);
                              print(controller.text);
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return CupertinoAlertDialog(
                                    title: const Text('Please Enter your Text'),
                                    actions: [
                                      TextButton(
                                        onPressed: () async {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.blue,
                        )),
                    suffixIcon: TextButton(
                      onPressed: () {
                        setState(() {
                          // data.remove(controller.text);
                          isRemove = !isRemove;
                          print(data);
                        });
                      },
                      child: const Text("Edit"),
                    ),
                  ),
                ),
                Wrap(
                  children: chips(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> chips() {
    List<Widget> chips = [];
    for (int i = 0; i < data.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: isRemove
            ? InputChip(
                disabledColor: Colors.grey[300],
                label: Text(data[i]),
                isEnabled: true,
                onDeleted: () {
                  data.removeAt(i);
                  setState(
                    () {
                      data = data;
                    },
                  );
                },
              )
            : InputChip(
                disabledColor: Colors.grey[300],
                label: Text(data[i]),
                isEnabled: true,
              ),
      );
      chips.add(item);
    }
    return chips;
  }
}
