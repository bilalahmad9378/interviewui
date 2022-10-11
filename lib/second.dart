import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview/signin.dart';
import 'package:interview/third.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.white),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Container(
                  height: 150,
                  width: size.width,
                  color: Colors.deepPurple[100],
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, top: 20),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
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
                  height: 150,
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.deepPurple[100],
                  child: OutlinedButton(
                    onPressed: (() {}),
                    child: Text(
                      "I'M A CUSTOMER ",
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.deepPurple[100],
                  child: OutlinedButton(
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => signin()));
                    }),
                    child: Text(
                      "I'M A RIDER ",
                      style: TextStyle(color: Colors.black87, fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
