
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:test_app/stripe_payment_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  Stripe.publishableKey = 'Your-Publishable_key from stripe account';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe Payment',
      home: StripePaymentScreen(),
    );
  }
}

