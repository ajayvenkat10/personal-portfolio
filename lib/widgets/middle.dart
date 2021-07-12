import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/widgets/project_widget.dart';
import 'package:velocity_x/velocity_x.dart';

/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

class MiddleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
        children: [
          'Some Projects :'
              .richText
              .xl4
              .yellow400
              .align(TextAlign.left)
              .make(),
          80.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(projectName: 'Pressure Cooker'),
              ProjectWidget(projectName: 'Placement Predictor'),
              ProjectWidget(projectName: 'Sambar Stories - OTAR'),
              ProjectWidget(projectName: 'SureVote'),
              ProjectWidget(projectName: 'BagalUber'),
            ],
            height: 170,
            enlargeCenterPage: true,
            viewportFraction: isMobile(context) ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayInterval: 3.seconds,
          )),
        ],
      ).p64().h(isMobile(context) ? 500 : 300),
    );
  }
}
