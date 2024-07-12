import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/favourite_provider.dart';
import 'package:provider_boiler_plate/screens/favourite/selected_item.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelectedItem()));
            },
          )
        ],
        title: const Text('Favourite Screen'),
      ),
      body: Consumer<FavouriteProvider>(
          builder: (context, favouriteProvider, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (favouriteProvider.selectedItems.contains(index)) {
                          favouriteProvider.removeItem(index);
                        } else {
                          favouriteProvider.addItem(index);
                        }
                      },
                      title: Text('Item $index'),
                      trailing: Icon(
                          favouriteProvider.selectedItems.contains(index)
                              ? Icons.favorite
                              : Icons.favorite_border_outlined),
                    );
                  }),
            )
          ],
        );
      }),
    );
  }
}
