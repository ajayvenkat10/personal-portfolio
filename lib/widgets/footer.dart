/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:personal_portfolio/widgets/custom_app_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PortfolioColors.secondaryColor,
      child: VStack(
        [
          30.heightBox,
          VxResponsive(
            xsmall: _getMobileTabWidget(),
            small: _getMobileTabWidget(),
            medium: _getMobileTabWidget(),
            large: _getDesktopWidget(context),
            xlarge: _getDesktopWidget(context),
          ),
          50.heightBox,
          CustomAppBar(),
          10.heightBox,
          'Thanks for scrolling.'.richText.semiBold.white.make(),
          20.heightBox,
          [
            'Built with Flutter.'.text.red500.make(),
            4.widthBox,
            Icon(
              AntIcons.heart,
              color: Vx.red500,
              size: 14,
            )
          ].hStack(
            crossAlignment: CrossAxisAlignment.center,
          )
        ],
        crossAlignment: CrossAxisAlignment.center,
      ).wFull(context).p16(),
    );
  }

  Widget _getMobileTabWidget(){
    return VStack(
      [
        'Contact me at : '.text.center.white.xl2.make(),
        10.heightBox,
        _getEmailWidget(),
      ],
      crossAlignment: CrossAxisAlignment.center,
    );
  }

  Widget _getDesktopWidget(BuildContext context){
    return HStack(
      [
        'Contact me at : '.text.center.white.xl2.make(),
        10.widthBox,
        _getEmailWidget()
      ],
      alignment: MainAxisAlignment.spaceAround,
    ).w(context.safePercentWidth * 80).scale150().p16();
  }

  Widget _getEmailWidget() {
    return 'ajayvenkat10@gmail.com'
        .text
        .size(13)
        .color(PortfolioColors.accentColor)
        .semiBold
        .make()
        .box
        .border(color: PortfolioColors.accentColor)
        .p16
        .rounded
        .make();
  }
}
