import 'package:flutter/material.dart';
import 'package:food_delivery_app/component/TextField.dart';
import 'package:food_delivery_app/component/botton.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();

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
              'Create New  Account ',
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
              height: 10,
            ),
            CustomTextField(
                controller: confirmpasswordcontroller,
                hintText: 'Confirm Password',
                obscureText: true),
            const SizedBox(
              height: 20,
            ),
            CustomButtom(
              text: 'Sing Up',
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account ?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    )),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login Now ',
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
