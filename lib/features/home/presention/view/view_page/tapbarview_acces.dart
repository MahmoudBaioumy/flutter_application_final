import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/more_di_acc.dart';
import 'package:gap/gap.dart';

class tapviwe_acss extends StatefulWidget {
  const tapviwe_acss({super.key});

  @override
  State<tapviwe_acss> createState() => _tapviwe_acssState();
}

class _tapviwe_acssState extends State<tapviwe_acss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Gap(10),
            Text(
              'Accessories for men and women',
              style: GetTitleStyle(color: AppColors.blackcolor),
            ),
            const Gap(20),
            ///////////////first Row ////////////////////////////
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/glass.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_acc(
                                        name: 'FARFETCH MAN',
                                        image: 'assets/glass.png',
                                        salary: '12.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'FARFETCH MAN',
                        style: GetsmallStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '12.00\$',
                        style: GetsmallStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/1GIRL.jpg',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_acc(
                                        name: 'fLIFFY Women Bold set ',
                                        image: 'assets/1GIRL.jpg',
                                        salary: '120.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'fLIFFY Women Bold set of Earring',
                        style: GetsmallStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '120.00\$',
                        style: GetsmallStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            ////////////////////////////second Row////////////////////////////////////
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/HEZ.PNG',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_acc(
                                        name: 'ORVIS MAN',
                                        image: 'assets/HEZ.PNG',
                                        salary: '10.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'ORVIS MAN',
                        style: GetsmallStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '10.00\$',
                        style: GetsmallStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Expanded(
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/2Girl.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_acc(
                                        name: 'LANVIN Women',
                                        image: 'assets/2Girl.png',
                                        salary: '30.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'LANVIN Women',
                        style: GetsmallStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '30.00\$',
                        style: GetsmallStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
