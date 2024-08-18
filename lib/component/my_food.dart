import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/food.dart';

class MyFood extends StatelessWidget {
  final food Food;
  final void Function()? onTap;

  const MyFood({super.key, required this.Food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,  // <-- Update this line to use the passed onTap
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Food.name),
                      Text(
                        '\$${Food.price}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        Food.dis,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Food.image,
                    height: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          indent: 25,
          endIndent: 25,
        )
      ],
    );
  }
}
