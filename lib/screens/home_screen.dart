import 'package:flutter/material.dart';
import 'package:stuffcart/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("StuffCart"),
    //     backgroundColor: Colors.indigo,
    //   ),
    //   body: const Center(
    //     child: Text("Welcome to StuffCart"),
    //   ),
    // );
    return const LoginScreen();
  }
}
