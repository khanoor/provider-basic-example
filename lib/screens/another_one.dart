import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/another_one.dart';

class AnotherOne extends StatefulWidget {
  const AnotherOne({super.key});

  @override
  State<AnotherOne> createState() => _AnotherOneState();
}

class _AnotherOneState extends State<AnotherOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('another one'),
        ),
        body: Consumer<AnotherOneProvider>(
          builder: (context, value, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                    min: 0,
                    max: 1,
                    value: value.value,
                    onChanged: (val) {
                      value.changeValue(val);
                    }),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(value.value)),
                    )),
                    Expanded(
                        child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                    ))
                  ],
                )
              ],
            );
          },
        ));
  }
}
