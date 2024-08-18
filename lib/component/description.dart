import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    var myprimarytextstyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mysecondarytextstyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: myprimarytextstyle,
              ),
              Text(
                'Delivery Fee',
                style: mysecondarytextstyle,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '15-30 min',
                style: myprimarytextstyle,
              ),
              Text(
                'Delivery Time',
                style: mysecondarytextstyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
