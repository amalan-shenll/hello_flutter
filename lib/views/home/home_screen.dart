import 'package:flutter/material.dart';
import 'package:hello_flutter/rating_bar.dart';
import 'package:hello_flutter/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavigtionDrawer(),
        appBar: AppBar(
          title: new Text("Browse"),
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            new Center(
              child: new Text("Filter",
                textScaleFactor: 1.5,
                style: new TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                  child: Text(
                    'Trending this week',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 120.0),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.redAccent
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/food_1.png',
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: Text(
                'Crispy Chicken Sanwich',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
              child: Text(
                'Korean BBQ',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  color: Colors.black38
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: new StarRating(
                    rating: rating,
                    onRatingChanged: (rating) => setState(() => this.rating = rating),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 140.0),
                  child: Text(
                    "\$ 25.0",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.redAccent
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0),
                  child: Text(
                    'Most Popular',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 150.0),
                  child: Text(
                    '25 places',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.redAccent
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/food_2.png',
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: Text(
                'Conrad Chicago Restaurant',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
              child: Text(
                '963 Madyson Drive Suite 679',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                    color: Colors.black38
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0,left: 10.0),
                  child: new StarRating(
                    rating: rating,
                    onRatingChanged: (rating) => setState(() => this.rating = rating),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 120.0),
                  child: Text(
                    "Open 8:00AM",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black38
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0, // this will be set when a new tab is tapped
          fixedColor: Colors.redAccent,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.location_on),
              title: new Text('Discover'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star),
                title: Text('Favorios')
            ),
          ],
        ),
      )
    );
  }
}