import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

var darkGreenColor = Color(0xff279152);

class _DetailsPageState extends State<DetailsPage> {
  var greenColor = Color(0xff32a05f);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "greeny Nec",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 3, fontSize: 22.0),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    width: 220.0,
                    child: Text(
                      "Product OverView",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 48.0),
                    ),
                  ),
                  SizedBox(
                    height: 42.0,
                  ),
                  itemRow(Icons.star, "Water", "every 7 days"),
                  SizedBox(
                    height: 16.0,
                  ),
                  itemRow(Icons.ac_unit, "Humidity", "up to 82%"),
                  SizedBox(
                    height: 16.0,
                  ),
                  itemRow(Icons.straighten, "size", '38" - 48"tdll'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          itemRow2("Delivery Information"),
          SizedBox(
            height: 20,
          ),
          itemRow2("Return Policy"),
          Spacer(),
          Container(
            height: 90.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 90,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                      color: Color(0xff2c2731),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(32.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Add To Cart",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

itemRow(icon, name, title) {
  //de hna l Row l Asay aly l component aly feha hatkon benhom space between
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      //awal component .. hna haktab gwaha kool 7aga 3ayzha ganb b3d
      Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 6.0,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          )
        ],
      ),
      //tany component .. l space between hatkon benhom tmam
      Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
    ],
  );
}

itemRow2(title) {
  return Padding(
    padding: const EdgeInsets.only(left: 48.0),
    child: Container(
      height: 60.0,
      decoration: BoxDecoration(
          color: darkGreenColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              bottomLeft: Radius.circular(32.0))),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Icons.add,
            color: Colors.white,
            size: 24.0,
          ),
          SizedBox(
            width: 40.0,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    ),
  );
}
