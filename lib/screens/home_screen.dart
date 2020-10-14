import 'package:flutter/material.dart';
import 'package:stripe_flutter/screens/screens.dart';
import 'package:stripe_flutter/services/services.dart';
import 'package:stripe_flutter/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoading = false;

  _handleButtonLoading() => setState(() => isLoading = !isLoading);

  _handleCheckout(BuildContext context) async {
    _handleButtonLoading();
    final response = await PaymentService().stripeCheckout();
    _handleButtonLoading();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => CheckoutScreen(sessionId: response.data['id']),
    ));
    print(response.data['id']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FullButton(
          isLoading: isLoading,
          onPressed: () => _handleCheckout(context),
        ),
      ),
    );
  }
}
