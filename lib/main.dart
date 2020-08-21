import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Roboto",
    ),
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black87),
            onPressed: (){}
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.0)),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find Your", style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),),
                  SizedBox(height: 5.0,),
                  Text("Inspiration", style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87),
                        hintText: "What inspires you?...",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today", style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 15.0,),
                  Container(
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        promoCard('assets/1.jpg'),
                        promoCard('assets/2.jpg'),
                        promoCard('assets/3.jpg'),
                        promoCard('assets/4.jpg'),
                        promoCard('assets/5.jpg'),
                        promoCard('assets/6.jpg'),
                        promoCard('assets/7.jpg'),
                        promoCard('assets/8.jpg'),
                        promoCard('assets/9.jpg'),
                        promoCard('assets/10.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/8.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Favorite Quotes", style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          stops: [0.3, 0.9],
                          colors: [
                            Colors.black.withOpacity(0.8),
                            Colors.black.withOpacity(0.2),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // Image widget
  Widget promoCard(image){
    return AspectRatio(
        aspectRatio: 2.5/3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            margin: EdgeInsets.only(right: 5.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.1),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}

