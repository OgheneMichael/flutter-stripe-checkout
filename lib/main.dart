import 'package:flutter/material.dart';
import 'package:stripe_flutter/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stripe Checkout',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      routes: {
        '/': (_) => HomeScreen(),
        '/success': (_) => SuccessScreen(),
      },
    );
  }
}
