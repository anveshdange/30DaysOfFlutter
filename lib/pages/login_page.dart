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
  int delayMs = 1000; // 300 -> initially
  final _formKey = GlobalKey<FormState>() ; // this is a global key

  // This is the moveToHome method
  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true; // this will change the boolean value
      });
      await Future.delayed(Duration(milliseconds: delayMs));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false; // this reverts the state of the button
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key :_formKey,
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
                      validator: (value) {
                        if(value == null || value.isEmpty) return "Usename cannot be Empty";
                        return null;
                      },
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
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return "Please Input the Password";
                        } else if (value.length < 6 ){
                          return "Password must be atleast 6 letters long";
                        }
                        else {
                          // do not return anything , just return null (that is nothing pointer ) //
                          return null;
                        }
                      },
                    ),

                    const SizedBox(height:40.00),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 50.00 : 8.00),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration:Duration(milliseconds: delayMs),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,

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
      ),
    );
  }
}

