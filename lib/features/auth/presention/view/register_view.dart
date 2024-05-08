import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/email_vail.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/Custom_dialogs.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presention/view/Login_view.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_cubit.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_states.dart';
import 'package:flutter_application_2/features/home/presention/view/buttom_nav/buttom_nav.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class register_view extends StatefulWidget {
  const register_view({super.key});

  @override
  State<register_view> createState() => _register_viewState();
}

class _register_viewState extends State<register_view> {
  @override
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isVisable = true;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthStates>(
      listener: (context, state) {
        if (state is RegisterSuccesState) {
          pushAndRemoveUntil(context, const bottom_nav());
        } else if (state is RegisterErrorState) {
          Navigator.pop(context);
          showErrorDialog(context, state.error);
        } else if (state is RegisterloadingState) {
          showLoadingDialog(context);
        }
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create',
                    style: GetTitleStyle(
                        color: AppColors.blackcolor, fontSize: 20),
                  ),
                  const Gap(10),
                  Text(
                    'Your account',
                    style: GetTitleStyle(
                        color: AppColors.blackcolor, fontSize: 20),
                  ),
                  const Gap(8),
                  //////////////first////////////////////
                  TextFormField(
                    controller: _displayName,
                    decoration: const InputDecoration(
                      hintText: 'Enter your name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Your Name';
                      }
                      return null;
                    },
                  ),
                  const Divider(),
                  const Gap(5),
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
                      hintText: 'password',
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
                          )),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                  const Divider(),
                  const Gap(10),
                  const Gap(15),
                  Center(
                    child: Column(
                      children: [
                        custombutton(
                          width: 150,
                          height: 50,
                          text: 'SIGN UP',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthCubit>().register(
                                  _displayName.text,
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
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                maxRadius: 25,
                                backgroundImage: AssetImage('assets/appel.png'),
                              ),
                            ),
                            const Gap(15),
                            GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                maxRadius: 25,
                                backgroundImage:
                                    AssetImage('assets/googel.jpg'),
                              ),
                            ),
                            const Gap(15),
                            GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                maxRadius: 14,
                                backgroundImage: AssetImage(
                                  'assets/face.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(15),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Row(
                            children: [
                              const Text('Already have account?'),
                              TextButton(
                                  onPressed: () {
                                    pushwithReplacement(
                                        context, const Login_View());
                                  },
                                  child: Text(
                                    'Log In',
                                    style: GetbodyStyle(
                                        fontWeight: FontWeight.bold),
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
    );
  }
}
