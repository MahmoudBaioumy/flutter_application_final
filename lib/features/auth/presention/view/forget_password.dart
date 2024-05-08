import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/email_vail.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presention/view/verifi_code.dart';
import 'package:gap/gap.dart';

class forget_password extends StatelessWidget {
  forget_password({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
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
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot password?',
                  style:
                      GetTitleStyle(color: AppColors.blackcolor, fontSize: 30),
                ),
                const Gap(30),
                Text(
                  'Enter email associated with your account and we’ll send and email with intructions to reset your password',
                  style: GetbodyStyle(color: Colors.grey, fontSize: 17),
                ),
                const Gap(40),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'enter your email here',
                      hintStyle: GetbodyStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter your Email';
                    } else if (!emailValidate(value)) {
                      return 'Please Enter Your Email Correct';
                    }
                    return null;
                  },
                ),
                const Divider(),
                const Gap(40),
                Center(
                  child: custombutton(
                    text: 'Submit',
                    width: 500,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        push(context, const verifi_code());
                      }
                    },
                    background: AppColors.blackcolor,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
