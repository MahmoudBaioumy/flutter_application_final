import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/row_star.dart';
import 'package:gap/gap.dart';

class more_ditel extends StatefulWidget {
  const more_ditel(
      {super.key,
      required this.name,
      required this.image,
      required this.salary});
  final String name;
  final String image;
  final String salary;

  @override
  State<more_ditel> createState() => _more_ditelState();
}

class _more_ditelState extends State<more_ditel> {
  @override
  int Colorindex = 0;
  int Sizeindex = 0;

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
                  Row(
                    children: [
                      Text(
                        'color',
                        style: GetbodyStyle(fontSize: 16),
                      ),
                      const Gap(210),
                      Text(
                        'size',
                        style: GetbodyStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const Gap(5),
                  ////////////////////////color///////////////////////////////////////
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Colorindex = 0;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: (Colorindex == 0)
                              ? Icon(
                                  Icons.check,
                                  color: AppColors.whitecolor,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Colorindex = 1;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: (Colorindex == 1)
                              ? Icon(
                                  Icons.check,
                                  color: AppColors.whitecolor,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Colorindex = 2;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: (Colorindex == 2)
                              ? Icon(
                                  Icons.check,
                                  color: AppColors.whitecolor,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const Spacer(),
                      /////////////////////////////////////////////////size///////////////////////////
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Sizeindex = 0;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: (Sizeindex == 0)
                              ? Text(
                                  'M',
                                  style: GetTitleStyle(
                                      color: AppColors.whitecolor,
                                      fontSize: 18),
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Sizeindex = 1;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: (Sizeindex == 1)
                              ? Text(
                                  'L',
                                  style: GetTitleStyle(
                                      color: AppColors.whitecolor,
                                      fontSize: 18),
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Sizeindex = 2;
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: (Sizeindex == 2)
                              ? Text(
                                  'S',
                                  style: GetTitleStyle(
                                      color: AppColors.whitecolor,
                                      fontSize: 18),
                                )
                              : const SizedBox(),
                        ),
                      ),
                    ],
                  ),
                  const Gap(80),
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
