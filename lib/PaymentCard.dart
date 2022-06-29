import 'package:flutter/material.dart';
import 'package:task__furnitureapp/reusable/appcolor.dart';

void main(List<String> args) {
  runApp(PaymentCard());
}

class PaymentCard extends StatefulWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appColor(context, 'AccountPayment', () {}),
        body: Column(),
      ),
    );
  }
}
