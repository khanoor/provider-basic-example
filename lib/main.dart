import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/another_one.dart';
import 'package:provider_boiler_plate/provider/count_provider.dart';
import 'package:provider_boiler_plate/provider/favourite_provider.dart';
import 'package:provider_boiler_plate/provider/them_provider.dart';
import 'package:provider_boiler_plate/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => AnotherOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChange = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChange.themeMode,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home: const HomeScreen(),
          );
        }));
  }
}
