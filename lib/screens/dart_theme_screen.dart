import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/them_provider.dart';

class DartThemeScreen extends StatefulWidget {
  const DartThemeScreen({super.key});

  @override
  State<DartThemeScreen> createState() => _DartThemeScreenState();
}

class _DartThemeScreenState extends State<DartThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeChangerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Theme"),
      ),
      body: Column(
        children: [
          RadioListTile(
              title: const Text("Light"),
              value: ThemeMode.light,
              groupValue: themeChange.themeMode,
              onChanged: themeChange.setTheme),
          RadioListTile(
              title: const Text("Dark"),
              value: ThemeMode.dark,
              groupValue: themeChange.themeMode,
              onChanged: themeChange.setTheme),
          RadioListTile(
              title: const Text("System"),
              value: ThemeMode.system,
              groupValue: themeChange.themeMode,
              onChanged: themeChange.setTheme),
        ],
      ),
    );
  }
}
