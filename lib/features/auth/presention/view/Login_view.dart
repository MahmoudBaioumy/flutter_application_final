import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/email_vail.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/Custom_dialogs.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presention/view/forget_password.dart';
import 'package:flutter_application_2/features/auth/presention/view/register_view.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_cubit.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_states.dart';
import 'package:flutter_application_2/features/home/presention/view/buttom_nav/buttom_nav.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class Login_View extends StatefulWidget {
  const Login_View({super.key});

  @override
  State<Login_View> createState() => _register_viewState();
}

class _register_viewState extends State<Login_View> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordController_Confirm =
      TextEditingController();
  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is loginSuccesState) {
          pushAndRemoveUntil(context, const bottom_nav());
        } else if (state is loginErrorState) {
          Navigator.pop(context);
          showErrorDialog(context, state.error);
        } else {
          showLoadingDialog(context);
        }
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'log into',
                      style: GetTitleStyle(
                          color: AppColors.blackcolor, fontSize: 20),
                    ),
                    const Gap(15),
                    Text(
                      'Your account',
                      style: GetTitleStyle(
                          color: AppColors.blackcolor, fontSize: 20),
                    ),
                    const Gap(40),

                    /////////////secound///////////////////
                    TextFormField(
                      controller: _emailController,
                      decoration:
                          const InputDecoration(hintText: 'Email address'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Email';
                        } else if (!emailValidate(value)) {
                          return 'Please Enter Your Email Correct';
                        }
                        return null;
                      },
                    ),
                    const Divider(),
                    const Gap(5),
                    ////////////////third/////////////////
                    TextFormField(
                      controller: _passwordController,
                      obscureText: isVisable,
                      decoration: InputDecoration(
                          hintText: 'Password',
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
                              ))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Password';
                        }
                        return null;
                      },
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            push(context, forget_password());
                          },
                          child: Text(
                            'forgot password?',
                            style: GetsmallStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    const Gap(50),
                    Center(
                      child: Column(
                        children: [
                          custombutton(
                            width: 150,
                            height: 50,
                            text: 'LOG IN',
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await context.read<AuthCubit>().login(
                                    _emailController.text,
                                    _passwordController.text);
                              }
                            },
                            background: AppColors.blackcolor,
                          ),
                          const Gap(15),
                          Text(
                            'or sign ip with',
                            style: GetsmallStyle(),
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const CircleAvatar(
                                  maxRadius: 30,
                                  backgroundImage: AssetImage(
                                    'assets/appel.png',
                                  ),
                                ),
                              ),
                              const Gap(20),
                              GestureDetector(
                                onTap: () {},
                                child: const CircleAvatar(
                                  maxRadius: 30,
                                  backgroundImage:
                                      AssetImage('assets/googel.jpg'),
                                ),
                              ),
                              const Gap(20),
                              GestureDetector(
                                onTap: () {},
                                child: const CircleAvatar(
                                  maxRadius: 16,
                                  backgroundImage: AssetImage(
                                    'assets/face.png',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Gap(50),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                Text(
                                  'Don\'t hane an account',
                                  style:
                                      GetbodyStyle(fontWeight: FontWeight.w500),
                                ),
                                TextButton(
                                    onPressed: () {
                                      pushwithReplacement(
                                          context, const register_view());
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: GetbodyStyle(
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
