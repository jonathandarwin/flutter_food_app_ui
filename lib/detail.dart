import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  String tag;

  DetailPage({this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(                    
              width: MediaQuery.of(context).size.width,     
              decoration: BoxDecoration(
                color: Color(0xffDAEAB9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0)
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(           
                    top: 50.0,
                    left: 20.0,         
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 30.0,
                      ),
                    ),                  
                  ),
                  Center(                    
                    child: Container(
                      padding: EdgeInsets.only(
                        bottom: 70.0
                      ),
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/2,
                      // child: Image.asset(
                      //   "asset/food.png"
                      // )
                      child: Hero(
                        tag: tag,
                        child: Image.asset(
                          "asset/food.png"
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 130,
                    left: 20.0,
                    child: Text(
                      "Steak with Vegetables",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 20.0,
                    right: 20.0,
                    child: Text(                      
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.",                      
                      style: TextStyle(                        
                        color: Colors.white,                        
                        fontSize: 16.0,                        
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
