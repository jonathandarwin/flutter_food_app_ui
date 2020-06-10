import 'package:flutter/material.dart';

import 'model.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',      
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(              
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffDAEAB9),
      bottomNavigationBar: BottomMenu(),
      body: Container(
        padding: EdgeInsets.only(          
          top: 60,          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,          
          children: <Widget>[              
            TextGreeting(),
            SizedBox(height: 10),
            TextName(),
            SizedBox(height: 20),        
            Search(),  
            SizedBox(height: 20),        
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0)
                  )
                ),
                child: SingleChildScrollView(
                  child: Information()
                )
              ),
            )
          ],
        ),
      )
    );
  }
}

class TextGreeting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Good Morning,',
        style: TextStyle(          
          fontSize: 18.0
        )
      ),
    );
  }
}

class TextName extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Joe',
        style: TextStyle(          
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        )
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {        

    return Padding(
      padding: EdgeInsets.only(
        left: 20.0,
        right: 20.0
      ),
      child: Container(
        padding: EdgeInsets.only(
          left: 20.0,
          right: 10.0
        ),
        height: 40,
        decoration: BoxDecoration(       
          color: Colors.white,   
          borderRadius: BorderRadius.all(
            Radius.circular(20.0)
          )
        ),        
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search...",
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.3),
            )
          ),
        ),
      ),
    );
  }
}

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 30,
        bottom: 20
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleRecommendation(),
          SizedBox(height: 10.0),
          ListRecommendation(),
          SizedBox(height: 30.0),
          TitleArticle(),
          SizedBox(height: 10.0),
          CardArticle()
        ],
      ),
    );
  }
}

class TitleRecommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Recommendation for you',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      )
    );
  }
}

class ListRecommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    List<Food> foodList = List();
    foodList.add(Food(name: "Steak with Vegetables", description: "Fresh steak with add-ons", image: "https://raw.githubusercontent.com/rajayogan/flutterui-curveddesigns/master/assets/plate1.png"));
    foodList.add(Food(name: "Steak with Vegetables", description: "Fresh steak with add-ons", image: "https://raw.githubusercontent.com/rajayogan/flutterui-curveddesigns/master/assets/plate1.png"));
    foodList.add(Food(name: "Steak with Vegetables", description: "Fresh steak with add-ons", image: "https://raw.githubusercontent.com/rajayogan/flutterui-curveddesigns/master/assets/plate1.png"));

    List<BoxShadow> shadowList = List();
    shadowList.add(BoxShadow(
                        color: Color(0xffDAEAB9),
                        offset: Offset(0, 20),
                        blurRadius: 5,
                        spreadRadius: 5
                      ));

    return Container(
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, idx) {
          return Padding(
            padding: EdgeInsets.only(
              left: 5,
              right: 5
            ),
          );
        },
        itemCount: foodList.length,        
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, idx) {        
          return Container(
            width: MediaQuery.of(context).size.width/2.3,
            height: 200,
            // color: Color(0xffA4A4A4),
            child: Stack(
              children: <Widget>[
                // Box
                Positioned(
                  bottom: 0,
                  child: Container(                    
                    width: MediaQuery.of(context).size.width/2.3 - 30,
                    height: 120,
                    decoration: BoxDecoration(
                      // color: Color(0xff000000),                      
                      borderRadius: BorderRadius.circular(25.0),
                      color: Color(0xffDAEAB9),
                      boxShadow: shadowList
                    ),
                  ),
                ),
                // Image
                Positioned(
                  right: 0,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network(foodList[idx].image)
                  ),
                ),
                // Name
                Positioned(
                  top: 0,                  
                  child: Container(
                      width: 100,
                      padding: EdgeInsets.only(
                        top : 50.0,
                        left: 10.0
                      ),
                      child: Text(
                        foodList[idx].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold                          
                        ),
                    ),
                  ),
                ),

                // Description
                Positioned(
                  bottom: 0,                  
                  child: Container(
                      width: 100,
                      padding: EdgeInsets.only(
                        bottom : 20.0,
                        left: 10.0
                      ),
                      child: Text(
                        foodList[idx].description,
                        style: TextStyle(                          
                          fontSize: 13,
                          color: Colors.black.withOpacity(0.5)
                        ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}


class TitleArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Today\'s Articles',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      )
    );
  }
}

class CardArticle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Stack(
          children: <Widget>[
          Positioned.fill(              
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1495195134817-aeb325a55b65?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=755&q=80",
                fit: BoxFit.fill,              
              ),
            ),
          ),
          Center(
            child: Container(
              width: 120,
              child: Text(
                "Cooking App Recommended by Master Chef",
                textAlign: TextAlign.center,
                style: TextStyle(                
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.white                                  
                ),
              ),
            ),
          )
          ],
      )
    );
  }
}


class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Message')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          title: Text('Notification')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile')
        ),
      ],      
    );
  }
}