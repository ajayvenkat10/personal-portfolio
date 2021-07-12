/// Author - Ajay Mahadevan
/// Created on 11 July, 2021.

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final double squareSize;

  const ProjectWidget({
    required this.projectName,
    this.squareSize = 220,
  });

  @override
  Widget build(BuildContext context) {
    return projectName.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(squareSize)
        .neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .p16();
  }
}
