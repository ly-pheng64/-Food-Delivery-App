import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/my_quantity_selector.dart';
import 'package:food_delivery_app/model/cart-item.dart';
import 'package:food_delivery_app/model/resaturant.dart';
import 'package:provider/provider.dart';

class MyCartTitle extends StatelessWidget {
  final cartitem cartItem;

  const MyCartTitle({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<resaturant>(
      builder: (context, value, child) => Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        padding: const EdgeInsets.all(8), // Add some padding for better visual
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      cartItem.Food.image,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover, // Ensure the image fits within the box
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.Food.name),
                      Text(
                        '\$' + cartItem.Food.price.toString(),
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                  const Spacer(),
                  QuantitySelector(
                      quantity: cartItem.quantity,
                      Food: cartItem.Food,
                      onIncrement: () {
                        value.addToCart(cartItem.Food, cartItem.selectaddon);
                      },
                      onDecrement: () {
                        value.removeFromCart(cartItem);
                      })
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectaddon.isEmpty ? 0 : 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectaddon
                      .map(
                        (addon) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '\$' + addon.price.toString(),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                ),
                              ],
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary)),
                            onSelected: (value) {},
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                fontSize: 12),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
