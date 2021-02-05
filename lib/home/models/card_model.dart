import 'package:flutter/material.dart';
import 'package:maalhous/home/constants/color_constant.dart';

class CardModel {
  String name;
  String type;
  String balance;
  String valid;
  String moreIcon;
  String cardBackground;
  Color bgColor;
  Color firstColor;
  Color secondColor;

  CardModel(this.name, this.type, this.balance, this.valid, this.moreIcon,
      this.cardBackground, this.bgColor, this.firstColor, this.secondColor);
}

List<CardModel> cards = cardData
    .map((item) => CardModel(
        item['name'],
        item['type'],
        item['balance'],
        item['valid'],
        item['moreIcon'],
        item['cardBackground'],
        item['bgColor'],
        item['firstColor'],
        item['secondColor']))
    .toList();

var cardData = [
  {
    "name": "Jennings",
    "type": "assets/images/mastercard_logo.png",
    "balance": "6.352.25",
    "valid": "06/24",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground":'assets/icons/mastercard_bg.svg',
    "bgColor": kMasterCardColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor
  },
  {
    "name": "Glenn",
    "type": "assets/images/jenius_logo.png",
    "balance": "20.528.33",
    "valid": "02/23",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground":'assets/svg/jenius_bg.svg',
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor
  },
  {
    "name": "Tranoshark",
    "type": "assets/images/mastercard_logo.png",
    "balance": "6.352.21",
    "valid": "06/24",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground":'assets/svg/mastercard_bg.svg',
    "bgColor": kMasterCardColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor
  },
  {
    "name": "Carula",
    "type": "assets/images/jenius_logo.png",
    "balance": "20.528.37",
    "valid": "02/23",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground":'assets/svg/jenius_bg.svg',
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor
  }
];
