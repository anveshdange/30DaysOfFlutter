// importing the material package from the flutter sdk package
import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart' ;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height:80.00),
            Image.asset(
                'images/login_image.png',
                fit: BoxFit.cover,
            ),
            const SizedBox(
              height:20.00,
            ),
            const Text(
                'Welcome',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height:20.00),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),

                  const SizedBox(height:40.00),

                  ElevatedButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(150,40),
                    ),
                    onPressed: () {
                      // we will use the navigator class to switch from login page to the home page
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

