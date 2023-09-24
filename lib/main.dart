import 'package:flutter/material.dart';
import 'package:flutter_test1/widgets/button.dart';
import 'package:flutter_test1/widgets/currency_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xff181818),
          body: SingleChildScrollView(
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
                  height: 70,
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
                CurrencyCard(
                  name: "Euro",
                  code: "EUR",
                  amount: "6 428",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  order: 1,
                ),
                CurrencyCard(
                  name: "Bitcoin",
                  code: "BTC",
                  amount: "6 428",
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                  order: 2,
                ),
                CurrencyCard(
                  name: "Dollar",
                  code: "USD",
                  amount: "428",
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                  order: 3,
                ),
              ],
            ),
          )),
    );
  }
}
