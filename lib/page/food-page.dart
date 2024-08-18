import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/botton.dart';
import 'package:food_delivery_app/model/food.dart';
import 'package:food_delivery_app/model/resaturant.dart';
import 'package:provider/provider.dart';

class foodpage extends StatefulWidget {
  final food Food;
  final Map<addon, bool> selectaddon = {};
  foodpage({super.key, required this.Food}) {
    for (addon Addon in Food.availableaddon) {
      selectaddon[Addon] = false;
    }
  }

  @override
  State<foodpage> createState() => _foodpageState();
}

class _foodpageState extends State<foodpage> {
  void addToCart(food Food, Map<addon, bool> selectedaddon) {
    Navigator.pop(context);
    List<addon> currentlySelectedAddon = [];
    for (addon Addon in widget.Food.availableaddon) {
      if (widget.selectaddon[Addon] == true) {
        currentlySelectedAddon.add(Addon);
      }
    }

    context.read<resaturant>().addToCart(Food, currentlySelectedAddon);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  widget.Food.image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.Food.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '\$' + widget.Food.price.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.Food.dis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        'Add on ',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).colorScheme.secondary),
                            borderRadius: BorderRadius.circular(8)),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.Food.availableaddon.length,
                          itemBuilder: (context, index) {
                            addon Addon = widget.Food.availableaddon[index];
                            return CheckboxListTile(
                              title: Text(Addon.name),
                              subtitle: Text('\$' + Addon.price.toString()),
                              value: widget.selectaddon[Addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectaddon[Addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
                CustomButtom(
                    onTap: () => addToCart(widget.Food, widget.selectaddon),
                    text: 'Add to cart'),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.50,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                 onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded)),
            ),
          ),
        ),
      ],
    );
  }
}
