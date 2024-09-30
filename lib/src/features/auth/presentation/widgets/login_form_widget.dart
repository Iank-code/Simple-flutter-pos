import 'package:flutter/material.dart';
import 'package:ben_tech/src/features/landing/presentation/screens/landing_screen.dart';

Widget loginForm(GlobalKey<FormState> formKey, BuildContext context) {
  return Form(
    key: formKey,
    child: Column(
      children: [
        // Email Field
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
            hintText: 'Enter Your Email',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),

        // Password Field
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter Your Password',
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            } else if (value.length < 6) {
              return 'Password must be at least 6 characters long';
            }
            return null;
          },
        ),
        const SizedBox(height: 16),

        ElevatedButton(
          onPressed: () {
            if (formKey.currentState?.validate() == true) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ),
              );
              // ScaffoldMessenger.of(formKey.currentContext!).showSnackBar(
              //   const SnackBar(content: Text('Login Successful')),
              // );
            }
          },
          child: const Text('Login'),
        ),
      ],
    ),
  );
}
