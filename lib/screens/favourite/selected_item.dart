import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/favourite_provider.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Items"),
      ),
      body: Consumer<FavouriteProvider>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: value.selectedItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item ${value.selectedItems[index]}'),
                        );
                      }))
            ],
          );
        },
      ),
    );
  }
}
