import 'package:flutter/material.dart';

Widget buildAppBenefits() {
  return Column(
    children: [
      Image.asset('assets/images/login.jpg', width: 300, height: 300),
      _AppBenefits(),
    ],
  );
}

Widget _AppBenefits() {
  return const Column(
    children: [
      Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8),
          Text('Beautiful Display of sale')
        ],
      ),
      Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8),
          Text('Easy Payment Processing'),
        ],
      ),
      Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8),
          Text('Fast Customer Support'),
        ],
      ),
    ],
  );
}
