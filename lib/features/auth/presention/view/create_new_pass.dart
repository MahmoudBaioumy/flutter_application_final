import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/home/presention/view/home_view.dart';
import 'package:gap/gap.dart';

class new_password extends StatefulWidget {
  const new_password({super.key});

  @override
  State<new_password> createState() => _new_passwordState();
}

class _new_passwordState extends State<new_password> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _passwordController_Confirm =
      TextEditingController();
  bool isVisable = true;
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
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create new password',
                style: GetTitleStyle(color: AppColors.blackcolor, fontSize: 20),
              ),
              const Gap(20),
              Text(
                'Your new password must be different from previously used password',
                style: GetbodyStyle(color: AppColors.greycolor),
              ),
              const Gap(50),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisable,
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'password',
                  labelStyle: GetsmallStyle(color: AppColors.greycolor),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: Icon(
                        (isVisable)
                            ? Icons.remove_red_eye
                            : Icons.visibility_off_rounded,
                        color: AppColors.greycolor,
                      )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Your password';
                  }
                  return null;
                },
              ),
              const Gap(5),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisable,
                controller: _passwordController_Confirm,
                decoration: InputDecoration(
                  labelText: 'Sunieneee',
                  labelStyle: GetsmallStyle(color: AppColors.greycolor),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisable = !isVisable;
                        });
                      },
                      icon: Icon(
                        (isVisable)
                            ? Icons.remove_red_eye
                            : Icons.visibility_off_rounded,
                        color: AppColors.greycolor,
                      )),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Confirm password';
                  } else if (_passwordController.text !=
                      _passwordController_Confirm.text) {
                    return 'Please Enter Confirm password correct';
                  }
                  return null;
                },
              ),
              const Gap(70),
              Center(
                  child: custombutton(
                text: 'Confirm',
                onPressed: () {
                  pushwithReplacement(context, const Home_view());
                },
                background: AppColors.blackcolor,
                width: 150,
                height: 45,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
