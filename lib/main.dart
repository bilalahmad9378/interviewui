import 'package:flutter/material.dart';
import 'package:interview/Components/HomeScreen/HomeScreen.dart';
// import 'package:interview/firstscreen.dart';
import 'package:interview/Components/Forgottenpassword/forgotpassword.dart';
import 'package:interview/Model/Product/product.dart';
import 'package:interview/Components/Form/FormScreen.dart';
import 'package:interview/Screens/Signin/signin.dart';
import 'package:interview/Screens/Signup/signup.dart';
// import 'package:interview/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const firstscreen(title: 'Flutter Demo Home Page'),
      home: HomeScreen(),
      // first(),
    );
  }
}
