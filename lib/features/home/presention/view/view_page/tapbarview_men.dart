import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/home/presention/view/infoview_me/feature_pro.dart';
import 'package:flutter_application_2/features/home/presention/view/infoview_me/new_coll.dart';
import 'package:flutter_application_2/features/home/presention/view/infoview_me/top_coll.dart';
import 'package:gap/gap.dart';

class tapview_men extends StatefulWidget {
  const tapview_men({super.key});

  @override
  State<tapview_men> createState() => _tapview_menState();
}

class _tapview_menState extends State<tapview_men> {
  int pageindex = 0;
  @override
  final List carouselimages = [
    'assets/men3.png',
    'assets/meeen.png',
    'assets/men2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'for men',
                  style: GetTitleStyle(color: AppColors.blackcolor),
                ),
              ),
              const Gap(10),
              CarouselSlider.builder(
                  itemCount: carouselimages.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      ClipRRect(
                        // this is the temp is build and the count //
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          carouselimages[itemIndex],
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),

                  //// this is the options in CarouselSlider can use //
                  options: CarouselOptions(
                    height: 150,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, reason) {
                      setState(() {
                        pageindex = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Feature Products',
                        style: GetTitleStyle(color: AppColors.blackcolor),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            push(context, const feature_pro_men());
                          },
                          child: Text(
                            'Show all',
                            style: GetbodyStyle(color: AppColors.greycolor),
                          )),
                    ],
                  ),
                  const Gap(10),
                  ///////////////////////////////// list of feature products////////////////////////////
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ///////////////first//////////////
                        Column(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 150,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.whitecolor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: SizedBox(
                                            height: 170,
                                            width: 125,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Image.asset(
                                                'assets/men1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Kurta Sets Jackets',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                      const Gap(5),
                                      Text(
                                        '\$ 30.99',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        const Gap(5),
                        /////////////////second////////////////
                        Column(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 150,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.whitecolor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: SizedBox(
                                            height: 170,
                                            width: 125,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Image.asset(
                                                'assets/meeen2.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Men Pullovers',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                      const Gap(5),
                                      Text(
                                        '\$ 20.00',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        /////////third////////////////////////
                        Column(
                          children: [
                            SizedBox(
                                height: 250,
                                width: 150,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.whitecolor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: SizedBox(
                                            height: 170,
                                            width: 125,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Image.asset(
                                                'assets/sport.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        '2 pieces Autumn Running tracksuit',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                      const Gap(5),
                                      Text(
                                        '\$ 80.00',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ///////////back new collection
                  SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: () {
                          push(context, const new_coll_men());
                        },
                        child: Container(
                          decoration:
                              BoxDecoration(color: AppColors.whitecolor),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Gap(30),
                                  Text(
                                    'NEW COLLECTION',
                                    style: GetTitleStyle(
                                        fontSize: 16,
                                        color: AppColors.greycolor,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Gap(20),
                                  Text(
                                    'magnificence',
                                    style: GetbodyStyle(fontSize: 16),
                                  ),
                                  Text(
                                    '& integrity',
                                    style: GetbodyStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Image.asset(
                                'assets/bac111.jpg',
                                width: 150,
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Top Collection',
                    style: GetTitleStyle(color: AppColors.blackcolor),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        push(context, const top_coll_men());
                      },
                      child: Text(
                        'Show all',
                        style: GetbodyStyle(color: AppColors.greycolor),
                      )),
                ],
              ),
              SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.whitecolor),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Gap(30),
                            Text(
                              'Sale up to 40%',
                              style: GetTitleStyle(
                                  color: AppColors.greycolor,
                                  fontWeight: FontWeight.normal),
                            ),
                            const Gap(20),
                            Text(
                              'FOR SLIM',
                              style: GetbodyStyle(fontSize: 18),
                            ),
                            Text(
                              '& BEAUTY',
                              style: GetbodyStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/bac22.jpg',
                          width: 200,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.whitecolor),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Gap(30),
                            Text(
                              'Summer Collection 2021',
                              style: GetTitleStyle(
                                  color: AppColors.greycolor,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                            const Gap(20),
                            Text(
                              'Most sexy',
                              style: GetbodyStyle(fontSize: 16),
                            ),
                            Text(
                              '& fabulous',
                              style: GetbodyStyle(fontSize: 16),
                            ),
                            Text(
                              'design',
                              style: GetbodyStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/bac3.png',
                          width: 120,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
