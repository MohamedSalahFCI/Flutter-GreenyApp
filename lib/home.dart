import 'package:flutter/material.dart';
import 'package:greenry_app/details_page.dart';

class GreenyView extends StatefulWidget {
  @override
  _GreenyViewState createState() => _GreenyViewState();
}

class _GreenyViewState extends State<GreenyView> {
  var greenColor = Color(0xff32a05f);
  var darkGreenColor = Color(0xff279152);
  var productImage =
      'https://i.pinimg.com/originals/8f/bf/44/8fbf441fa92b29ebd0f324effbd4e616.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              // color: Colors.white,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100.0)),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  //l 7aga hatbd2 mnen
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16.0,
                    ),
                    Icon(Icons.arrow_back),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        "Hay momo i Greeny Design",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32.0),
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      "Designed By mohamed Salah",
                      style: TextStyle(color: Colors.black45),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: <Widget>[
                        //Spacer(), lw 3ayz awadeha a5er l shasha 3la l ymen 3shan dh Row
                        Text(
                          '\$',
                          style: TextStyle(
                              color: greenColor,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '85',
                          style: TextStyle(
                              color: greenColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 52.0),
                        ),
                      ],
                    ),
                    //hazlha fel a5er ta7t 3shan dh column
                    Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FloatingActionButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage()));
                          },
                          backgroundColor: greenColor,
                          child: Icon(Icons.shopping_cart),
                        ),
                        Container(
                          width: 100.0,
                          //height: 200,
                          child: Image.network(
                            productImage,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Planning",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 85.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            color: darkGreenColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "250",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Text(
                                  "ml",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                            Text(
                              "Water",
                              style: TextStyle(color: Colors.white54),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 85.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                            color: darkGreenColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32.0),
                                topRight: Radius.circular(32.0))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "18",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Text(
                                  "C",
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                            Text(
                              "SunChine",
                              style: TextStyle(color: Colors.white54),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
