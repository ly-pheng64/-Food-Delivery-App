import 'package:flutter/material.dart';
import 'package:food_delivery_app/model/resaturant.dart';
import 'package:food_delivery_app/page/login_or_register.dart';
import 'package:food_delivery_app/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Themeprovider(),
      ),
      ChangeNotifierProvider(
        create: (context) => resaturant(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginOrRegister(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
