import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/more_di_clos.dart';
import 'package:flutter_application_2/core/widgets/row_star.dart';
import 'package:gap/gap.dart';

class info_view_wo extends StatefulWidget {
  const info_view_wo({super.key});

  @override
  State<info_view_wo> createState() => _info_view_woState();
}

class _info_view_woState extends State<info_view_wo> {
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
                                'assets/domi1.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'FARFETCH Women',
                                          image: 'assets/domi1.png',
                                          salary: '20.00 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'FARFETCH Women',
                          style: GetsmallStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 20.00',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const Rowstar()
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
                                'assets/domi2.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Turtleneck Sweater',
                                          image: 'assets/domi2.png',
                                          salary: '39.9 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Turtleneck Sweater',
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
                        const Rowstar()
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
                                'assets/domi4.png',
                                height: 150,
                                width: 150,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  push(
                                      context,
                                      const more_ditel(
                                          name: 'Lihua Tunic White',
                                          image: 'assets/domi4.png',
                                          salary: '53.00 \$'));
                                },
                                icon: const Icon(
                                  Icons.shopping_bag_rounded,
                                ))
                          ],
                        ),
                        const Gap(5),
                        Text(
                          'Lihua Tunic White',
                          style: GetsmallStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.greycolor),
                        ),
                        const Gap(5),
                        Text(
                          '\$ 53.00',
                          style: GetsmallStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                        ),
                        const Rowstar()
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
                                'assets/domi5.png',
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
                                          image: 'assets/domi5.png',
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
                        const Rowstar()
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
