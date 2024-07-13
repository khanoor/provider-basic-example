import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_boiler_plate/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Login ")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                )),
            const SizedBox(height: 10),
            TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                )),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  authProvider.login(
                      emailController.text, passwordController.text);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: authProvider.isloading
                        ? const CircularProgressIndicator()
                        : const Text("Login"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
