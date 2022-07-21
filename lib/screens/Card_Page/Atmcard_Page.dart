// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:task__furnitureapp/reusable/appcolor.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

void main(List<String> args) {
  runApp(PaymentCard());
}

class PaymentCard extends StatefulWidget {
  const PaymentCard({Key? key}) : super(key: key);

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  // final dropDownItemY = ['1', '2', '3', '4', '5', '6', '7'];
  // final dropDownItemM = ["jan", "feb", "march", "april", "may", 'jun', 'july'];

  // String? dropDownValueY;
  // String? dropDownValueM;
  bool s = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appColor(context, 'AccountPayment', () {}),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CreditCardWidget(
                cardNumber: "4545645645565",
                expiryDate: "4564",
                cardHolderName: "Shubham patil",
                cvvCode: "cfdf",
                showBackView: s,
                onCreditCardWidgetChange:
                    (CreditCardBrand) {}, //true when you want to show cvv(back) view
              ),
              CreditCardForm(
                formKey: GlobalKey(), // Required
                onCreditCardModelChange: (CreditCardModel data) {}, // Required
                themeColor: Colors.red,
                obscureCvv: true,
                obscureNumber: true,
                isHolderNameVisible: true,
                isCardNumberVisible: true,
                isExpiryDateVisible: true,
                cardNumberDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expired Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder',
                ),
                cardHolderName: 'shubham patil',
                cardNumber: 'f0021',
                cvvCode: '45454',
                expiryDate: '450',
              ),
              // Container(
              //   height: 200,
              //   width: 400,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     gradient: LinearGradient(
              //         begin: Alignment.centerLeft,
              //         end: Alignment.centerRight,
              //         colors: [
              //           Color.fromARGB(255, 255, 243, 71),
              //           Color.fromARGB(255, 194, 71, 0),
              //         ]),
              //   ),
              //   child: Cardfront(),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Text('Add New Card',
              //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              // SizedBox(
              //   height: 15,
              // ),
              // TextField(
              //   decoration: InputDecoration(labelText: ' Card holder name'),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // TextField(
              //   decoration: InputDecoration(
              //     labelText: ' Card Number',
              //   ),
              // ),
              // SizedBox(
              //   height: 25,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     DropdownButton(
              //         hint: Text("Year"),
              //         value: dropDownValueY,
              //         items: dropDownItemY
              //             .map((e) => DropdownMenuItem(
              //                   child: Text(e),
              //                   value: e,
              //                 ))
              //             .toList(),
              //         onChanged: (value) {
              //           setState(() {
              //             dropDownValueY = value.toString();
              //           });
              //         }),
              //     DropdownButton(
              //         hint: Text("Month"),
              //         value: dropDownValueM,
              //         items: dropDownItemM
              //             .map((e) => DropdownMenuItem(
              //                   child: Text(e),
              //                   value: e,
              //                 ))
              //             .toList(),
              //         onChanged: (value) {
              //           setState(() {
              //             dropDownValueM = value.toString();
              //           });
              //         }),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              uiButton(context, "Add Now", () {})
            ],
          ),
        ),
      ),
    );
  }
}
