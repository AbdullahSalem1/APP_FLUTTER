import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          //colom Main
          child: Column(
            children: [
              //first  Step image
              Container(
                //color: const Color.fromARGB(255, 12, 64, 106),
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "images/iphon.jpg",
                  fit: BoxFit.contain,
                ),
              ),

              //addddddكونينر عامة من بعد الصوره الكبيره
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    //bellow
                    Container(
                      color: Color.fromARGB(255, 240, 237, 236),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        //height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(children: [
                          //macdo and heart
                          Row(
                            children: [
                              //image
                              Container(
                                height: 45,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage("images/iphon.jpg"),
                                        fit: BoxFit.contain)),
                                margin: EdgeInsets.only(right: 10),
                              ),
                              //text macdon
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "MC Donalds",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " American culstant that food",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Spacer(),
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                          //////end macdo

                          SizedBox(
                            height: 10,
                          ), //2 text
                          Row(
                            children: [
                              const Text(
                                "daily tyt: ",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "8:30 am to 11:00 pm",
                                style: TextStyle(
                                    color: Colors.amber[800],
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                          //star and text
                          ,
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber[800]),
                              const Text(" 4.9",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              const Text("  200+ Ratings",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //icon location
                          Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.amber[800]),
                              const Text("  Location",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 10),
                        ]),
                      ),
                    ),
                    //container Orange
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      height: 80,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "30% OFF",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Enjoy 30% off on of catagorice ",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),

                    //menu Other
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      padding: EdgeInsets.only(left: 20),
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30))),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: menu.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: Row(
                            children: [
                              Text(
                                "${menu[index]["name"]}",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              SizedBox(
                                width: 22,
                              )
                            ],
                          ));
                        },
                      ),
                    ),
                    //list
                    Container(
                      height: 325,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 420,
                            margin: EdgeInsets.only(
                                left: 10, right: 10, top: 1, bottom: 10),
                            //   height: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0, 10),
                                      blurRadius: 10)
                                ]),
                            child: ListTile(
                              title: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            "images/iphon.jpg",
                                          ),
                                          fit: BoxFit.fill),
                                      color: Colors.white24,
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
                                            Text(
                                              "\$5.55",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "\$6.7",
                                              style: TextStyle(
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                  color: Colors.grey,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  //+ heart
                                  Column(
                                    children: const [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        size: 25,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 25,
                                      )
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
          //colom father
        ),
      )),
    );
  }
}
