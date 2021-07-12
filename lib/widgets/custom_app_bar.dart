import 'package:flutter/material.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:ant_icons/ant_icons.dart';
/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntIcons.code_outline,
      size: 50,
      color: PortfolioColors.accentColor,
    );
  }
}
