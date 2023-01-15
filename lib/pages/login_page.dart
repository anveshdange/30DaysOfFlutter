// importing the material package from the flutter sdk package
import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart' ;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = ""; // this is the name we want to print in the app welcome bar
  bool changeButton = false;

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
            Text(
                'Welcome $name',
              style: const TextStyle(
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
                    onChanged: (value){
                      name = value;
                      setState(() {}); // this calls the build method again
                    },
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),

                  const SizedBox(height:40.00),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true; // this will change the boolean value
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration:const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(changeButton ? 50.00 : 8.00),
                      ),
                      child: changeButton
                          ? const Icon(
                          Icons.done,
                          color: Colors.white,
                      )
                          : const Text(
                          'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(150,40),
                  //   ),
                  //   onPressed: () {
                  //     // we will use the navigator class to switch from login page to the home page
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: const Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

