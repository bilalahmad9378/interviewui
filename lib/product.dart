import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class product extends StatelessWidget {
  List<String> productName = [
    'Mango',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit Basket',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [10, 20, 30, 40, 50, 60, 70];
  List<String> productImage = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.brivane.com%2Fproducts%2Fcantu-shear-butter-for-natural-hair-coconut-curling-cream&psig=AOvVaw0Rsbxf4j33jgDTOX-TFA2P&ust=1665646813523000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCMjK44eY2voCFQAAAAAdAAAAABAI',
    'https://www.brivane.com/products/cantu-shear-butter-for-natural-hair-coconut-curling-cream',
    'https://image.shutterstock.com/image-photo/green-grape-leaves-isolated-on-600w-533487490.jpg',
    'https://media.istockphoto.com/photos/banana-picture-id1184345169?s=612x612',
    'https://media.istockphoto.com/photos/cherry-trio-with-stem-and-leaf-picture-id157428769?s=612x612',
    'https://media.istockphoto.com/photos/single-whole-peach-fruit-with-leaf-and-slice-isolated-on-white-picture-id1151868959?s=612x612',
    'https://media.istockphoto.com/photos/fruit-background-picture-id529664572?s=612x612'
  ];

  product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              // itemCount: productImage.length,
              itemBuilder: (context, index) {
            return Card(
              child: Row(
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          //Text(index.toString()),
                          Container(
                            height: 140,
                            width: 200,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 3)),
                            child: Image(
                              height: 100,
                              width: 100,
                              image:
                                  NetworkImage(productImage[index].toString()),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red),
                              child: ElevatedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.purple[200]),
                                onPressed: () {},
                                child: const Text(
                                  'Accept',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                          //Text(productName[index].toString()),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     RawMaterialButton(
                          //       fillColor: Colors.purple[300],
                          //       onPressed: () {},
                          //       child: Text('Accept'),
                          //     )
                          //   ],
                          // )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "JoL'Oreal Paris",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            const Text(
                              'You can browse through the complete world of ...',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "You will get Rs:13",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 53,
                            ),
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 2, color: Colors.purple)),
                              child: ElevatedButton(
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: const Text(
                                  'Accept',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          })),
        ],
      ),
    ));
  }
}
