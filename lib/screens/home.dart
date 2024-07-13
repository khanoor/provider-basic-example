// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider_boiler_plate/screens/another_one.dart';
import 'package:provider_boiler_plate/screens/count_example.dart';
import 'package:provider_boiler_plate/screens/dart_theme_screen.dart';
import 'package:provider_boiler_plate/screens/favourite/favourite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            CustomeButton(
                title: 'Count Example', screenName: const CountExample()),
            CustomeButton(title: 'Another One', screenName: const AnotherOne()),
            CustomeButton(
                title: 'Favourite Items', screenName: const FavouriteScreen()),
            CustomeButton(
                title: 'Change Theme', screenName: const DartThemeScreen()),
          ],
        ),
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
  String title;

  Widget screenName;
  CustomeButton({
    super.key,
    required this.title,
    required this.screenName,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screenName));
        },
        child: Text(title));
  }
}
