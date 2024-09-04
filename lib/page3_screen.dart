import 'package:flutter/material.dart';

class Page3Screen extends StatelessWidget {
  List<dynamic> menu = [
    {"name": "Other"},
    {"name": "Pizza"},
    {"name": "Cheken"},
    {"name": "Rice"},
    {"name": "Juice"},
    {"name": "Other"},
    {"name": "Rice"},
    {"name": "Juice"},
    {"name": "Other"},
  ];

  ///
  List<dynamic> image = [
    {"images": "images/image3.jpg"},
    // {"images": "images/image4.jpg"},
    // {"images": "images/image4.jpg"},
    // {"images": "images/image4.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        //main column
        child: Column(
          children: [
            //image
            Container(
              color: Colors.white,
              height: 320,
              width: MediaQuery.of(context).size.width,
              // decoration: BoxDecoration(
              //                 image: DecorationImage(image: AssetImage("images/image3.jpg"))),
              child: Image.asset(
                "images/iphon.jpg",
                fit: BoxFit.contain,
              ),
            ),

            ///adddd
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  //bellow
                  Container(
                    padding: EdgeInsets.all(15),
                    //height: 200,
                    decoration: const BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: const Column(children: [
                      //icon loca

                      SizedBox(height: 10),
                    ]),
                  ),

                  //orange Container
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    height: 80,
                    width: MediaQuery.of(context).size.width - 20,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    // ignore: prefer_const_constructors
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white38,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Compagin info",
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        //Spacer(),
                        SizedBox(
                          width: 25,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "menu menu",
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.keyboard_backspace_outlined,
                              color: Colors.white38,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //list
                  Container(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 420,
                          margin: EdgeInsets.only(
                              left: 10, right: 10, top: 1, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 10),
                                    blurRadius: 10)
                              ]),
                          child: ListTile(
                            title: Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "images/iphon2.jpg",
                                        ),
                                        fit: BoxFit.contain),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 15),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Item Name",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "this Item for Sandwich form Macdonalds ",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.grey),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Colors.amber,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                //+ heart
                                const Column(
                                  children: [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      size: 28,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
