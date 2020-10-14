import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Success',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
      ),
    );
  }
}
