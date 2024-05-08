import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/profile/view/Payment/addNew.dart';
import 'package:gap/gap.dart';

class Payment_view extends StatelessWidget {
  const Payment_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: GetTitleStyle(color: AppColors.blackcolor),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Card Management',
                    style: GetTitleStyle(color: AppColors.blackcolor),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        push(context, const addnew());
                      },
                      child: Text(
                        'Add New +',
                        style: GetbodyStyle(color: Colors.red),
                      ))
                ],
              ),
            ),
            const Gap(10),
            Image.asset('assets/Payment.png'),
            const Gap(15),
            Text(
              'or check out with',
              style: GetbodyStyle(color: AppColors.greycolor),
            ),
            const Gap(50),
            Image.asset('assets/payments.png')
          ],
        ),
      ),
    );
  }
}
