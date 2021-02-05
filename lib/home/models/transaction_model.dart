import 'package:flutter/material.dart';
import 'package:maalhous/home/constants/color_constant.dart';

class TransactionModel {
  String name;
  String type;
  Color colorType;
  String signType;
  String amount;
  String information;
  String recipient;
  String date;
  String card;

  TransactionModel(this.name, this.type, this.colorType, this.signType,
      this.amount, this.information, this.recipient, this.date, this.card);
}

List<TransactionModel> transactions = transactionData
    .map((item) => TransactionModel(
        item['name'],
        item['type'],
        item['colorType'],
        item['signType'],
        item['amount'],
        item['information'],
        item['recipient'],
        item['date'],
        item['card']))
    .toList();

var transactionData = [
  {
    "name": "Outcome",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": kOrangeColor,
    "signType": "-",
    "amount": "2000.00",
    "information": "Transfer to",
    "recipient": "Carula Jordanlick",
    "date": "1 Feb 2021",
    "card": "assets/images/mastercard_logo.png"
  },
  {
    "name": "Income",
    "type": 'assets/icons/income_icon.svg',
    "colorType": kGreenColor,
    "signType": "+",
    "amount": "352.00",
    "information": "Received from",
    "recipient": "Edward Saphim",
    "date": "1 Jan 2021",
    "card": "assets/images/jenius_logo_blue.png"
  },
  {
    "name": "Outcome",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": kOrangeColor,
    "signType": "-",
    "amount": "532.65",
    "information": "Monthly Payment",
    "recipient": "Spotify",
    "date": "09 Jan 2021",
    "card": "assets/images/mastercard_logo.png"
  }
];
