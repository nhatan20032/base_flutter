import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInPage extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}