import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {

  final String tag;

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
                      child: Hero(
                        tag: tag,
                        child: Image.asset(
                          "asset/food.png"
                        ),
                      ),
                    )
                  ),           
                  Positioned(
                    left: 20.0,
                    bottom: 50.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Steak with Vegetables",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Text(                      
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.",                      
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(                        
                              color: Colors.black,                        
                              fontSize: 16.0,                                                      
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0,),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(                                                                          
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40.0,
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40.0,
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40.0,
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 40.0,
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.star,
                                color: Colors.black.withOpacity(0.1),
                                size: 40.0,
                              ),
                            ],
                          ),
                        ),   
                      ],
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
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                          top:10.0,
                          bottom: 10.0
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffDAEAB9),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Text(
                          "Order Now",
                          style: TextStyle(
                            color: Colors.black.withOpacity(.5),
                            fontSize: 25.0
                          )
                        ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
