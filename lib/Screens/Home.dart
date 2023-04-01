import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lasithnew/Screens/Drug.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body:  SafeArea(
        child:Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                Color.fromRGBO(54, 47, 217, 100),
                Colors.white,
            ]
            ),
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add Logo from this children tag
                  Container(
                    height:200 ,
                    width:200 ,
                    child:Image.asset('lib/assets/logo.png'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                                padding: EdgeInsets.all(16.0),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>loading()));
                                  });
                                },
                                child: Container(
                                  width: 290,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('DRUG',style: TextStyle(color: Colors.white,fontSize: 20)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 290,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: Text('DISEASE',style: TextStyle(color: Colors.white,fontSize: 20)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
