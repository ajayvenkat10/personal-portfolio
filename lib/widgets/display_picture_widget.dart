import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_portfolio/resources/portfolio_images.dart';
import 'package:velocity_x/velocity_x.dart';

/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

class DisplayPictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      origin: Offset(context.percentWidth * 10, 0),
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        PortfolioImages.myImage,
        fit: BoxFit.contain,
        height: context.percentHeight * 60,
      ),
    );
  }
}
