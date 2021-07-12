import 'package:flutter/material.dart';
import 'package:personal_portfolio/helper_functions.dart';
import 'package:personal_portfolio/resources/portfolio_colors.dart';
import 'package:personal_portfolio/widgets/custom_app_bar.dart';
import 'package:personal_portfolio/widgets/display_picture_widget.dart';
import 'package:personal_portfolio/widgets/introduction_widget.dart';
import 'package:personal_portfolio/widgets/social_accounts.dart';
import 'package:velocity_x/velocity_x.dart';

/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: PortfolioColors.secondaryColor,
      child: VxBox(
        child: VStack([
          ZStack([
            DisplayPictureWidget(),
            Row(
              children: [
                VStack([
                  isMobile(context) ? 40.heightBox : 10.heightBox,
                  CustomAppBar().shimmer(
                    primaryColor: PortfolioColors.accentColor,
                  ),
                  30.heightBox,
                  _getNameWidget(context),
                  20.heightBox,
                  VxBox()
                      .color(PortfolioColors.accentColor)
                      .size(60, 10)
                      .make()
                      .shimmer(
                        primaryColor: PortfolioColors.accentColor,
                      ),
                  30.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 5,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    medium: IntroductionWidget().pOnly(left: 90).h(
                      context.percentHeight * 60,
                    ),
                    large: IntroductionWidget().pOnly(left: 90).h(
                      context.percentHeight * 60,
                    ),
                    xlarge: IntroductionWidget().pOnly(left: 90).h(
                      context.percentHeight * 60,
                    ),
                  ),
                ).pOnly(left: context.percentWidth * 5),
              ],
            ).w(context.screenWidth),
          ]),
        ]),
      )
          .size(
            context.screenWidth,
            context.percentHeight * 60,
          )
          .color(PortfolioColors.secondaryColor)
          .make(),
    );
  }

  Widget _getNameWidget(BuildContext context) {
    return 'Ajay\nMahadevan.'
        .text
        .white
        .xl6
        .lineHeight(1.2)
        .size(isMobile(context) ? 12 : 18)
        .bold
        .make()
        .shimmer();
  }
}
