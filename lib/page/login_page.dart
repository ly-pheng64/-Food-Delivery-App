import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/TextField.dart';
import 'package:food_delivery_app/component/botton.dart';
import 'package:food_delivery_app/page/home.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  void login() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock_open_rounded,
                size: 72, color: Theme.of(context).colorScheme.inversePrimary),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Food Delivery App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
                controller: emailcontroller,
                hintText: 'Email',
                obscureText: false),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                obscureText: true),
            const SizedBox(
              height: 20,
            ),
            CustomButtom(
              text: 'Sing In',
              onTap: login,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register ',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
