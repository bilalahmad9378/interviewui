import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:interview/firstscreen.dart';
import 'package:interview/Components/Form/FormScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   leading: Text('Welcome'),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            color: Colors.deepPurple[100]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60, left: 10),
                child: Text(
                  'Welcome  ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 400,
                    ),
                    child: Text(
                      'Another',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'BEAUTY',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'SUPPLY',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'COMPANY.',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      'BROWSE SHOP & SAME DAY DROPS',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    //margin: EdgeInsets.symmetric(vertical: 20),
                    width: 350,
                    height: 15,
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      child: LinearProgressIndicator(
                        value: 0.5,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Colors.purple),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    // color: Colors.white,
                    child: GestureDetector(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FormScreen(),
                      ));
                    }),
                  )

                  // child: ,
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
