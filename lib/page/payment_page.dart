import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/component/botton.dart';
import 'package:food_delivery_app/page/delivery_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userPay() {
    if (formkey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Confirm payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text('Card Number : $cardNumber'),
                Text('Expiry Date : $expiryDate'),
                Text('Card Holder Name : $cardHolderName'),
                Text('Cvv : $cvvCode'),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeliveryPage(),
                    ));
                DeliveryPage();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('cancel'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(
          'Check Out',
        ),
      ),
       resizeToAvoidBottomInset: true,
      body: Expanded(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formkey,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButtom(onTap: userPay, text: 'Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
