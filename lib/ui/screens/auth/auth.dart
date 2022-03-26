import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wpay/constants/colors.dart';
import 'package:wpay/constants/size_config.dart';
import 'package:wpay/ui/screens/auth/auth_controller.dart';
import 'package:wpay/ui/widgets/auth_background.dart';
import 'package:wpay/ui/widgets/custom_button.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) {
        return Scaffold(
          body: Stack(children: [
            const AuthBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.fromHeight(context, 20),
                ),
                child: SizedBox(
                  height: SizeConfig.fromHeight(context, 80),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Illustrations.svg', fit: BoxFit.fitWidth,),
                        Text('A new way to pay \nanything more faster',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: SizeConfig.fontSize(context, 5),
                                color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              CustomButton(
                                  text: 'Login',
                                  onTap: () {},
                                  color: customButtonColor),
                                  const SizedBox(height: 20),
                              CustomButton(
                                  text: 'Sign Up',
                                  onTap: () {},
                                  color: transparent),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
