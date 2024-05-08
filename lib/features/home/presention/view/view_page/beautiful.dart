import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/more_di_bea.dart';
import 'package:gap/gap.dart';

class deau_view extends StatefulWidget {
  const deau_view({super.key});

  @override
  State<deau_view> createState() => _deau_viewState();
}

class _deau_viewState extends State<deau_view> {
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
              'Beauty for women',
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
                              'assets/beau1.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_bea(
                                        name: 'Si perfum Women ',
                                        image: 'assets/beau1.png',
                                        salary: '20.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'Si perfum Women',
                        style: GetsmallStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '20.00\$',
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
                              'assets/beau2.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_bea(
                                        name: 'body splash Women ',
                                        image: 'assets/beau2.png',
                                        salary: '15.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(10),
                      Text(
                        'body splash Women ',
                        style: GetsmallStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '15.00\$',
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
            const Gap(10),
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
                              'assets/beau3.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_bea(
                                        name: 'lip glos Women ',
                                        image: 'assets/beau3.png',
                                        salary: '10.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'lip glos Women',
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
                              'assets/beau4.png',
                              height: 150,
                              width: 150,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                push(
                                    context,
                                    const more_ditel_bea(
                                        name: 'perfum Women ',
                                        image: 'assets/beau4.png',
                                        salary: '25.00\$'));
                              },
                              icon: const Icon(
                                Icons.shopping_bag_rounded,
                              ))
                        ],
                      ),
                      const Gap(5),
                      Text(
                        'perfum Women',
                        style: GetsmallStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greycolor),
                      ),
                      const Gap(5),
                      Text(
                        '25.00\$',
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
