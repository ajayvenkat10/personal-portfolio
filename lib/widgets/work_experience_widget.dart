/// Author - Ajay Mahadevan
/// Created on 11 July, 2021.
import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class WorkExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PortfolioColors.secondaryColor,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Flex(
          direction: isMobile(context) ? Axis.vertical : Axis.horizontal,
          children: [
            'Work Experience :'
                .richText
                .xl4
                .white
                .align(TextAlign.left)
                .make(),
            isMobile(context) ? 30.heightBox : 80.widthBox,
            _getExperienceWidget('ML Intern @ ITC Infotech, May - July 2019'),
            isMobile(context) ? 30.heightBox : 80.widthBox,
            _getExperienceWidget('SDE Intern @ Nuclei, Jan - June 2020'),
          ],
          mainAxisAlignment: isMobile(context) ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
        ).p64(),
      ),
    );
  }

  Widget _getExperienceWidget(String experienceDetails) {
    return VxResponsive(
      xsmall: _mobileAndDeskWidget(experienceDetails),
      small: _mobileAndDeskWidget(experienceDetails),
      medium: _tabWidget(experienceDetails),
      large: _mobileAndDeskWidget(experienceDetails),
      xlarge: _mobileAndDeskWidget(experienceDetails),
    );
  }

  Widget _mobileAndDeskWidget(String experienceDetails){
    return experienceDetails
        .text
        .align(TextAlign.center)
        .size(16)
        .white
        .semiBold
        .make()
        .box
        .border(color: PortfolioColors.accentColor)
        .p32
        .rounded
        .make();
  }

  Widget _tabWidget(String experienceDetails){
    return experienceDetails
        .text
        .align(TextAlign.center)
        .size(16)
        .white
        .semiBold
        .make()
        .box
        .rounded
        .alignCenter
        .border(color: PortfolioColors.accentColor)
        .p16
        .square(200)
        .make();
  }
}

