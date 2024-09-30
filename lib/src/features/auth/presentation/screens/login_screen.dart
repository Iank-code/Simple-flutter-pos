import 'package:ben_tech/src/features/auth/presentation/widgets/app_benefits_widget.dart';
import 'package:ben_tech/src/features/auth/presentation/widgets/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAppBenefits(),
                ],
              ),
            ),
            const SizedBox(width: 32),
            SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginForm(_formKey, context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
