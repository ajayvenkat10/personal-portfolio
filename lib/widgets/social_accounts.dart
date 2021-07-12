/// Author - Ajay Mahadevan
/// Created on 10 July, 2021.

import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntIcons.twitter_outline, color: Colors.white,
      ).mdClick(() {
        launch('https://twitter.com/babar_handi');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.github, color: Colors.white,
      ).mdClick(() {
        launch('https://github.com/ajayvenkat10');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.linkedin, color: Colors.white,
      ).mdClick(() {
        launch('https://www.linkedin.com/in/ajay-mahadevan-3441b5148/');
      }).make(),
      20.widthBox,
      Icon(
        AntIcons.instagram_outline, color: Colors.white,
      ).mdClick(() {
        launch('https://www.instagram.com/ajayvenkat_10/');
      }).make(),
    ].hStack();
  }
}
