import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});
  void openlocationsearchbox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your Location '),
        content: const TextField(
          decoration: InputDecoration(hintText: 'search Address'),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Save'),
          ),
          //cancel
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Diliver Now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openlocationsearchbox(context),
            child: Row(
              children: [
                Text(
                  '12004 nv khmer',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
