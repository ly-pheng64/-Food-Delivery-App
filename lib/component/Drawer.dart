import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/Drawer_title.dart';
import 'package:food_delivery_app/page/setting.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTitle(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTitle(
            text: 'S E T T I N G',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Setting(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTitle(
            text: 'L O G O U T',
            icon: Icons.logout_rounded,
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
