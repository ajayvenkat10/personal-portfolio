/// Author - Ajay Mahadevan
/// Created on 11 July, 2021.
import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/widgets/project_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class AchievementsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
        children: [
          'Some Achievements :'
              .richText
              .xl4
              .yellow400
              .align(TextAlign.left)
              .make(),
          80.widthBox,
          Expanded(
              child: VxSwiper(
            items: [
              ProjectWidget(
                projectName: 'Certified Codechef CCDSAP - Foundation Level',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName: 'College level winner – CodersBit 2019',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName: 'Qualified - Google Code Jam 2019',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName: 'Finalist - Smart India Hackathon 2018 & 2019',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName:
                    'Country rank - 1297, ACM-ICPC Qualifiers',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName:
                    'Codechef College Student Chapter President - 2020',
                squareSize: 250,
              ),
              ProjectWidget(
                projectName: 'Codechef 4 star',
                squareSize: 250,
              ),
            ],
            height: 170,
            enlargeCenterPage: true,
            viewportFraction: isMobile(context) ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayInterval: 4.seconds,
          )),
        ],
      ).p64().h(isMobile(context) ? 500 : 300),
    );
  }
}
