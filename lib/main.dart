import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/another_one.dart';
import 'package:provider_boiler_plate/provider/count_provider.dart';
import 'package:provider_boiler_plate/provider/favourite_provider.dart';
import 'package:provider_boiler_plate/screens/favourite/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => AnotherOneProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FavouriteScreen(),
      ),
    );
  }
}
