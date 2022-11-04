import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview/Screens/Signin/signin.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
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
                          height: 90,
                          width: size.width,
                          color: Color(0xfD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Name',
                                labelText: 'Name'
                                // fillColor: Colors.grey
                                ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: size.width,
                          color: Color(0xfD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email',
                                labelText: 'Email'
                                // fillColor: Colors.grey
                                ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: size.width,
                          color: Color(0xfD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                                labelText: 'Password'
                                // fillColor: Colors.grey
                                ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: size.width,
                          color: Color(0xfD8D9CF),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Confirm Password',
                                labelText: 'Confirm Password'
                                // fillColor: Colors.grey
                                ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                        height: 60,
                        width: 390,
                        color: Colors.purple[100],
                        child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signin()),
                              );
                            },
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold
                              ),
                            ))),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: 400,
                      decoration: BoxDecoration(
                          // color: Colors.purple[100],
                          border: Border.all(color: Colors.purple)),
                      child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signin()));
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 27, color: Colors.grey),
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
