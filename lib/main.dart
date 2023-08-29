import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui_review/screens/main_screens.dart';
import 'package:flutter_carrot_market_ui_review/theme.dart';

void main () {
  runApp(CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      home: MainScreens(),
      theme: theme(),
    );
  }
}
