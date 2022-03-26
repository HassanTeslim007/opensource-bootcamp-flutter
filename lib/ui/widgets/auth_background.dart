import 'package:flutter/material.dart';
import 'package:wpay/constants/colors.dart';
import 'package:wpay/constants/size_config.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: SizeConfig.fromHeight(context, 100),
        color: backgroundColor,
        child: Stack(children: [
          Positioned(
              top: -SizeConfig.fromHeight(context, 30),
              left: -SizeConfig.fromWidth(context, 55),
              child: Container(
                  width: SizeConfig.fromWidth(context, 160),
                  height: SizeConfig.fromHeight(context, 100),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(255, 255, 255, 0.1))))
        ]));
  }
}
