import 'package:flutter/material.dart';
import 'package:keyboard_display/keyboard_display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              StreamBuilder(
                stream: KeyboardTool.keyboardInfo,
                builder: (_, snapData) {
                  return Text(snapData.data.toString());
                },
              ),
              const Spacer(),
              const TextField(),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              KeyboardDisplayView(builder: (_, info) {
                return AnimatedContainer(
                  height:
                      info.keyboardHeight > 0 ? info.keyboardHeight - 60 : 0,
                  duration: Duration(milliseconds: info.duration),
                );
              }),
              SizedBox(
                height: 60,
                child: TextButton(
                    onPressed: () {}, child: const Text('this is button')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
