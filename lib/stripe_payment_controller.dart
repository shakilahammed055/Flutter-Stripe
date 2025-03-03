import 'dart:convert';

import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
Map? paymentIntent;
Future makePayment() async {
  try {
    
    paymentIntent = await createPaymentIntent('10', 'USD');
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntent!['client_secret'],
        googlePay: const PaymentSheetGooglePay(
          testEnv: true,
          currencyCode: "USD",
          merchantCountryCode: "US",
        ),
        merchantDisplayName: 'shakil',
      ),
    );
    displayPaymentSheet();
  } catch (e) {
    print("Exception: $e");
    if (e is StripeConfigException) {
      print("Stripe exception: ${e.message}");
    } else {
      print("Exception: $e");
    }
  }
}

  Future<Map<String, dynamic>> createPaymentIntent(String amount, String currency) async {
    try {
      Map body = {
        'amount': ((int.parse(amount )) * 100).toString(),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      var secretKey = "your secret key from Stripe account"; // Add your secret key here
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'Bearer $secretKey',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: body,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body.toString());
      } else {
        print('Failed to create payment intent: ${response.body}');
        throw Exception('Failed to create payment intent');
      }
    } catch (err) {
      print('Error charging user: ${err.toString()}');
      rethrow;
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      Get.showSnackbar(
        GetSnackBar(title: "Paid Successfully",),
      );
      paymentIntent = null;
    } on StripeException catch (e) {
      print('Error: $e');
      Get.showSnackbar(
        GetSnackBar(title: "Payment Canceled",)
      );
    } catch (e) {
      print("Error in displaying payment sheet: $e");
    }
  }


  