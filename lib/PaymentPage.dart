// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task__furnitureapp/AtmCardpay.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';
import 'package:task__furnitureapp/reusepayment.dart';

void main(List<String> args) {
  runApp(PaymentPage());
}

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: appColor(context, "Top Up Payment", () {}),
          body: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Balance",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "1,23,234",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.purple),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Payment Methods',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      reusepayment(
                          context, "Mobile Banking ", () {}, Icons.paypal),
                      reusepayment(context, "Internet Banking ", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentCard()),
                        );
                      }, Icons.payment),
                      reusepayment(context, "Sms Banking ", () {},
                          Icons.wallet_outlined),
                      reusepayment(context, "Shop ", () {},
                          Icons.shopping_basket_outlined),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
