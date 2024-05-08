import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presention/view/create_new_pass.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:gap/gap.dart';

class verifi_code extends StatelessWidget {
  const verifi_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verification code',
                style: GetTitleStyle(color: AppColors.blackcolor, fontSize: 30),
              ),
              const Gap(10),
              Text(
                'Please enter the verification code we sent to your email address',
                style: GetbodyStyle(color: AppColors.greycolor, fontSize: 17),
              ),
              const Gap(70),
              Center(
                child: VerificationCode(
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                  keyboardType: TextInputType.number,
                  fullBorder: true,
                  underlineColor: Colors.amber,
                  length: 4,
                  cursorColor: Colors.blue,
                  clearAll: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'clear all',
                      style: TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                          color: Colors.blue[700]),
                    ),
                  ),
                  onCompleted: (String value) {},
                  onEditing: (bool value) {},
                ),
              ),
              const Gap(30),
              Text(
                'Resend in 00:10',
                style: GetsmallStyle(color: AppColors.greycolor),
              ),
              const Gap(50),
              Center(
                  child: custombutton(
                text: 'Cofirm',
                onPressed: () {
                  push(context, const new_password());
                },
                background: AppColors.blackcolor,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
