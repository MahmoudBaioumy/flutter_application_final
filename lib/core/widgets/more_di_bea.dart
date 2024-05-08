import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/row_star.dart';
import 'package:gap/gap.dart';

class more_ditel_bea extends StatefulWidget {
  const more_ditel_bea(
      {super.key,
      required this.name,
      required this.image,
      required this.salary});
  final String name;
  final String image;
  final String salary;

  @override
  State<more_ditel_bea> createState() => _more_ditel_beaState();
}

class _more_ditel_beaState extends State<more_ditel_bea> {
  @override
  int Colorindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 420,
              width: 400,
              child: Container(
                child: Stack(
                  children: [
                    Image.asset(
                      widget.image,
                      height: 600,
                      fit: BoxFit.fill,
                      width: 400,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios))
                  ],
                ),
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.name,
                        style: GetTitleStyle(color: AppColors.blackcolor),
                      ),
                      const Spacer(),
                      Text(
                        widget.salary,
                        style: GetTitleStyle(color: AppColors.blackcolor),
                      )
                    ],
                  ),
                  const Gap(10),
                  const Rowstar(),
                  const Gap(10),

                  const Gap(15),
                  ////////////////////////color///////////////////////////////////////

                  const Gap(100),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.Scafoldcolor),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Row(
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              color: AppColors.whitecolor,
                            ),
                            const Gap(10),
                            Text(
                              'Add To Cart',
                              style: GetTitleStyle(color: AppColors.whitecolor),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
