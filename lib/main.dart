import 'package:flutter/material.dart';
import 'package:flutter_test1/widgets/button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff181818),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Wellcom back',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white.withOpacity(0.8)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text : 'Transfer', bgColor : Color(0xfff1b33b), textColor : Colors.black),
                    Button(text : 'Request', bgColor : Color(0xff1f2123), textColor : Colors.white,),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wallets",
                      style: TextStyle(
                          color: Colors.white,fontSize: 36,fontWeight: FontWeight.w600
                      ),
                    ),
                    Text("View All",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                  ],
                ),
                Container(
                  clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: Color(0xff1f2123),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Euro",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(

                                children: [
                                  Text("6 428",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("EUR",
                                    style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20,
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Transform.scale(
                            scale: 2.2,
                            child: Transform.translate(
                              offset: Offset(-5, 12),
                              child: Icon(Icons.euro_symbol_rounded,
                                color: Colors.white,
                                size: 88,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          )),
    );
  }
}
