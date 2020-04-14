import 'package:flutter/material.dart';

import './detailsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nutri App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: null,
                        ),
                      ],
                    ))
              ],
            ),
          ),
          // End of top Nav
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          // End of hero kindof section
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildFoodItem(
                            'assets/plate1.png', 'Salmon bowl', '\$23.00'),
                        _buildFoodItem(
                            'assets/plate2.png', 'Spring bowl', '\$43.00'),
                        _buildFoodItem(
                            'assets/plate6.png', 'Avocado bowl', '\$35.00'),
                        _buildFoodItem(
                            'assets/plate5.png', 'Berry bowl', '\$55.00'),
                        _buildFoodItem(
                            'assets/plate3.png', 'Ofada bowl', '\$19.00'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    Container(
                      height: 60.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xFF1C1428),
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(color: Colors.white),
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
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailsPage(
                  heroTag: imgPath, foodName: foodName, foodPrice: price)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: imgPath,
                    child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width: 75.0),
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  onPressed: null),
            ),
          ],
        ),
      ),
    );
  }
}
