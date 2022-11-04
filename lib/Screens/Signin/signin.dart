import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview/Components/Forgottenpassword/forgotpassword.dart';
import 'package:interview/Model/Product/product.dart';
import 'package:interview/Screens/Signup/signup.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

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
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Container(
                      height: 150,
                      width: size.width,
                      color: Colors.deepPurple[100],
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, top: 17),
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
                      height: 50,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 380,
                          color: Color(0xD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              focusColor: Colors.grey,
                              // filled: true,
                              // fillColor: Color(0xfEEEBDD),
                              hintText: 'Username',
                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              labelText: 'Username',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.grey)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 140,
                          width: 380,
                          color: Color(0xD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              focusColor: Colors.grey,
                              suffixIcon: Icon(Icons.remove_red_eye),
                              // filled: true,
                              // fillColor: Color(0xfEEEBDD),

                              hintStyle:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              hintText: 'Password',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(width: 3, color: Colors.grey)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1, bottom: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                forgotpassword()));
                                  },
                                  child: Text(
                                    'Forgot password ?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22),
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 130,
                        ),
                        Container(
                            height: 60,
                            width: 390,
                            //color: Colors.purpleAccent,
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => product()));
                                },
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      fontSize: 27,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 60,
                          width: 400,
                          //color: Colors.deepPurple[100],
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[100],
                            border: Border.all(),
                          ),

                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => signup()));
                              },
                              child: Text(
                                'SIGN UP',
                                style:
                                    TextStyle(fontSize: 27, color: Colors.grey),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ),
    );
  }
}
