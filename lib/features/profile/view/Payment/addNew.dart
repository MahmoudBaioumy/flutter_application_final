import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:gap/gap.dart';

class addnew extends StatelessWidget {
  const addnew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add New',
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset('assets/pay.png')),
              const Gap(40),
              TextField(
                decoration: InputDecoration(
                    prefix: Icon(
                      Icons.payment,
                      color: AppColors.blackcolor,
                    ),
                    hintText: 'Card Numbder'),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Expires',
                        style: GetbodyStyle(color: AppColors.greycolor),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'CVV',
                        style: GetbodyStyle(color: AppColors.greycolor),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(hintText: '0/23'),
                    )),
                    Expanded(
                        child: TextField(
                            decoration: InputDecoration(hintText: '999')))
                  ],
                ),
              ),
              const Gap(40),
              custombutton(
                text: 'Add card',
                onPressed: () {},
                background: AppColors.blackcolor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
