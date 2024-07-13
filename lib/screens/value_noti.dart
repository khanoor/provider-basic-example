import 'package:flutter/material.dart';

class ValueNoti extends StatelessWidget {
  ValueNoti({super.key});

  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ValueNotifier")),
      body: ValueListenableBuilder(
          valueListenable: _count,
          builder: (context, value, child) {
            return Center(
                child: Text(
              _count.value.toString(),
              style: const TextStyle(fontSize: 30),
            ));
          }),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _count.value++;
          }),
    );
  }
}
