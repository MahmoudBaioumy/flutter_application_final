import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/intro/data/OnboardingModel.dart';
import 'package:gap/gap.dart';

class onboardingitem extends StatelessWidget {
  const onboardingitem({
    super.key,
    required this.model,
  });

  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        Text(
          model.titel,
          style: GetTitleStyle(color: AppColors.blackcolor),
        ),
        const Gap(20),
        Text(
          model.body,
          style: GetbodyStyle(),
        ),
        Image.asset(
          model.image,
          width: 300,
        ),
        const Spacer(
          flex: 1,
        )
      ],
    );
  }
}
