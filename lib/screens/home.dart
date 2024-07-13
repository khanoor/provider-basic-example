// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider_boiler_plate/screens/another_one.dart';
import 'package:provider_boiler_plate/screens/count_example.dart';
import 'package:provider_boiler_plate/screens/dart_theme_screen.dart';
import 'package:provider_boiler_plate/screens/favourite/favourite_screen.dart';
import 'package:provider_boiler_plate/screens/login_screen.dart';
import 'package:provider_boiler_plate/screens/value_noti.dart';

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
            const CustomeButton(
                title: 'Count Example', screenName: CountExample()),
            const CustomeButton(title: 'Another One', screenName: AnotherOne()),
            const CustomeButton(
                title: 'Favourite Items', screenName: FavouriteScreen()),
            const CustomeButton(
                title: 'Change Theme', screenName: DartThemeScreen()),
            CustomeButton(title: 'Value Notifier', screenName: ValueNoti()),
            const CustomeButton(
                title: 'Login', screenName: LoginScreen()),
          ],
        ),
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
  final String title;
  final Widget screenName;
  const CustomeButton({
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
