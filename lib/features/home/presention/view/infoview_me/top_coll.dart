import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/more_di_clos.dart';
import 'package:gap/gap.dart';

class top_coll_men extends StatefulWidget {
  const top_coll_men({super.key});

  @override
  State<top_coll_men> createState() => _top_coll_menState();
}

class _top_coll_menState extends State<top_coll_men> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'NEW COLLECTION',
          style: GetTitleStyle(color: AppColors.blackcolor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              ///////////////////////frist Row/////////////////////////////////////
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
                                'assets/meeen2.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Men Pullovers',
                                          image: 'assets/meeen2.png',
                                          salary: '25.00 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Men Pullovers',
                          style: GetsmallStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 25.00',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
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
                                'assets/men2.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Turkey Sweater',
                                          image: 'assets/men2.png',
                                          salary: '39.99 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Turkey Sweater',
                          style: GetsmallStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 39.99',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              ////////////////////////////////// second Row////////////////////////////////////////////////
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
                                'assets/men1.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Black turkey',
                                          image: 'assets/men1.png',
                                          salary: '50.00 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Black turkey ',
                          style: GetsmallStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 50.00',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
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
                                'assets/bac3.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Skirt Dress',
                                          image: 'assets/bac3.png',
                                          salary: '34.00 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Skirt Dress',
                          style: GetsmallStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 34.00',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
