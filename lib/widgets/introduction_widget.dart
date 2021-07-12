import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

/// Author - Ajay Mahadevan
/// Created on 11 July, 2021.

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        '- Introduction'.text.gray500.widest.sm.make(),
        20.heightBox,
        'A software engineer with a love for problem solving and will to learn new tech to translate a solution on paper to a piece of software.\n\nSDE-1 Frontend @Nuclei.\n\nCompetitive Programmer, Flutter Dev, Android Dev.  :)'
            .text
            .white
            .xl
            .wrapWords(true)
            .make()
            .box
            .width(context.screenWidth <= 960 ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.32)
            .make(),
      ],
      alignment: MainAxisAlignment.center,
    );
  }
}
