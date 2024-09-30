import 'package:flutter/material.dart';

Widget buildAppBenefits() {
  return Column(
    children: [
      Image.asset('assets/images/login.jpg', width: 500, height: 500),
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
          Text(
            'Beautiful Display of sale',
            style: TextStyle(fontSize: 20.5),
          )
        ],
      ),
      Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8),
          Text(
            'Easy Payment Processing',
            style: TextStyle(fontSize: 20.5),
          ),
        ],
      ),
      Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8),
          Text(
            'Fast Customer Support',
            style: TextStyle(fontSize: 20.5),
          ),
        ],
      ),
    ],
  );
}
