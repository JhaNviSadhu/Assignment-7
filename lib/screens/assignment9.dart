import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:ildc_hw/screens/second_page.dart';

class Assignment9 extends StatefulWidget {
  const Assignment9({Key? key}) : super(key: key);

  @override
  _Assignment9State createState() => _Assignment9State();
}

class _Assignment9State extends State<Assignment9> {
  List<String> data = [
    "Mehul Patel",
    "Nikunj",
    "Bhargav",
    "Devang",
    "Harsh",
    "Ami"
  ];

  Iterable<Widget> get chipWidgets sync* {
    for (final String chipText in data) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: isRemove
            ? Chip(
                label: Text(chipText),
                onDeleted: () {
                  setState(() {
                    (data.length == 10) ? ishide = !ishide : ishide;
                    data.removeWhere((String entry) {
                      return entry == chipText;
                    });
                  });
                },
              )
            : Chip(
                label: Text(chipText),
              ),
      );
    }
  }

  var controller = TextEditingController();
  bool isRemove = false;
  bool ishide = true;

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
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z\\s]")),
                  ],
                  controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: ishide
                        ? IconButton(
                            onPressed: () {
                              if (data.contains(controller.text)) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CupertinoAlertDialog(
                                      title: const Text('Data Already Exist'),
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
                              } else {
                                onPressed(context);
                              }

                              controller.clear();
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.blue,
                            ),
                          )
                        : Container(
                            width: 4,
                          ),
                    suffixIcon: (data.length > 0)
                        ? TextButton(
                            onPressed: () {
                              setState(() {
                                // data.remove(controller.text);

                                isRemove = !isRemove;
                                print(data);
                              });
                            },
                            child: const Text("Edit"),
                          )
                        : Container(
                            width: 10,
                          ),
                  ),
                ),
                Wrap(children: chipWidgets.toList())
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressed(BuildContext context) {
    return setState(() {
      print(ishide);
      (data.length == 10) ? ishide = !ishide : ishide;
      print(ishide);
      print(controller.text.trim());
      if (data.length < 10 &&
          controller.text.trim().isNotEmpty &&
          (controller.text != " ")) { 
        data.add(controller.text.trim());

        print(data);
        print(controller.text);
      } else if (data.length == 10 && controller.text.trim().isNotEmpty) {
        showDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text('you reached at range'),
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
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: const Text('Enter your text'),
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
  }
}
//   List<Widget> chips() {
//     List<Widget> chips = [];
//     for (int i = 0; i < data.length; i++) {
//       Widget item = Padding(
//         padding: const EdgeInsets.only(left: 10, right: 5),
//         child: isRemove
//             ? InputChip(
//                 disabledColor: Colors.grey[300],
//                 label: Text(data[i]),
//                 isEnabled: true,
//                 onDeleted: () {
//                   data.removeAt(i);
//                   setState(
//                     () {
//                       data = data;
//                     },
//                   );
//                 },
//               )
//             : InputChip(
//                 disabledColor: Colors.grey[300],
//                 label: Text(data[i]),
//                 isEnabled: true,
//               ),
//       );
//       chips.add(item);

//       controller.clear();
//     }
//     return chips;
//   }
// }
