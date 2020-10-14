import 'package:dio/dio.dart';

class PaymentService {
  Future<Response> stripeCheckout() {
    return Dio().post('http://localhost:5500/stripe-checkout');
  }
}
