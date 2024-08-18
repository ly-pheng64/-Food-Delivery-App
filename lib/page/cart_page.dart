import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/botton.dart';
import 'package:food_delivery_app/component/my_cart_title.dart';
import 'package:food_delivery_app/model/resaturant.dart';
import 'package:food_delivery_app/page/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<resaturant>(builder: (context, resaturant, child) {
      final userCart = resaturant.cart;

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                          'Are You Sure You Want TO Clear All The Cart ???'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            resaturant.clearCart();
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
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(
                          child: Center(child: const Text('The Cart is empty')))
                      : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem =
                                  userCart[index]; // Fetch the cart item
                              return MyCartTitle(
                                cartItem: cartItem, // Pass it to MyCartTitle
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
            CustomButtom(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentPage(),
                    )),
                text: 'Go to check out'),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      );
    });
  }
}
