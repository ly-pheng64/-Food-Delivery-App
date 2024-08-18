import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/my_receipt.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text('Delivery in progress..'),
      ),
      body: Column(
        children: [MyReceipt()],
      ),
    );
  }
}
