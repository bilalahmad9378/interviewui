import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                // height: 150,
                // width: size.width,
                // color: Colors.deepPurple[200],
                height: size.height,
                width: size.width,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 150,
                      width: size.width,
                      color: Colors.deepPurple[100],
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Another',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              'BEAUTY',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text(
                              'SUPPLY',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Text(
                              'COMPANY.',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Please, enter your email address. You will receive a \nlink to create a new password via email.',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 140,
                              width: 380,
                              color: Color(0xD8D9CF),
                              child: const TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  focusColor: Colors.grey,
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                  hintText: 'Email',
                                  labelText: 'Email',
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.grey)),
                                ),
                              ),
                            ),
                            Container(
                                height: 60,
                                width: 390,
                                color: Colors.deepPurple[200],
                                child: OutlinedButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'SEND',
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
