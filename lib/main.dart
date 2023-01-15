import 'package:codepur/pages/home_page.dart';
import 'package:codepur/pages/login_page.dart';
import 'package:codepur/utils/routes.dart';
import 'package:flutter/material.dart' ;
import 'package:google_fonts/google_fonts.dart';
// github access token: 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
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme() ,
      ),
      // debugShowCheckedModeBanner: false, // this line of code is used to remove the debug logo in development
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        "/" : (context) => const LoginPage(), //  this means home route in place
        MyRoutes.homeRoute : (context) => const HomePage(), // this is the home page route
        MyRoutes.loginRoute : (context) => const LoginPage(), // this is the login page route
      },
    );
  }
}
