import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/home/presention/view/infview_wo/feature_pro.dart';
import 'package:flutter_application_2/features/home/presention/view/infview_wo/new_coll.dart';
import 'package:flutter_application_2/features/home/presention/view/infview_wo/top_coll.dart';
import 'package:gap/gap.dart';

class tap_view_w extends StatefulWidget {
  const tap_view_w({super.key});

  @override
  State<tap_view_w> createState() => _tap_view_wState();
}

class _tap_view_wState extends State<tap_view_w> {
  int pageindex = 0;
  @override
  final List carouselimages = [
    'assets/cr1.png',
    'assets/first.png',
    'assets/domi1.png',
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
                  'for women',
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
                            push(context, const feature_pro());
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
                                                'assets/domi1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Turtleneck Sweater',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                      const Gap(5),
                                      Text(
                                        '\$ 39.99',
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
                                                'assets/domi2.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Long Sleeve Dress',
                                        style: GetTitleStyle(
                                            color: AppColors.blackcolor,
                                            fontSize: 14),
                                      ),
                                      const Gap(5),
                                      Text(
                                        '\$ 45.00',
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
                                                'assets/domi3.png',
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ),
                                      Text(
                                        'Sportwear Set',
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
                          push(context, const info_view_wo());
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
                                        color: AppColors.greycolor,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const Gap(20),
                                  Text(
                                    'HANG OUT',
                                    style: GetbodyStyle(fontSize: 18),
                                  ),
                                  Text(
                                    '& PARTY',
                                    style: GetbodyStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Image.asset('assets/back1.png')
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
                        push(context, const top_coll());
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
                        Image.asset('assets/back2.png')
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
                        Image.asset('assets/back3.png')
                      ],
                    ),
                  )),
              const Gap(20),
              SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(color: AppColors.whitecolor),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/back4.png'),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'T-Shirts',
                              style: GetsmallStyle(color: AppColors.greycolor),
                            ),
                            const Gap(20),
                            Text('The',
                                style: GetsmallStyle(
                                    color: AppColors.blackcolor, fontSize: 16)),
                            Text('Office',
                                style: GetsmallStyle(
                                    color: AppColors.blackcolor, fontSize: 16)),
                            Text('Life',
                                style: GetsmallStyle(
                                    color: AppColors.blackcolor, fontSize: 16)),
                          ],
                        ),
                        const Gap(25),
                        Column(
                          children: [
                            Text(
                              'Dresses',
                              style: GetsmallStyle(color: AppColors.greycolor),
                            ),
                            const Gap(20),
                            Text('Elegant',
                                style: GetsmallStyle(
                                    color: AppColors.blackcolor, fontSize: 16)),
                            Text('Design',
                                style: GetsmallStyle(
                                    color: AppColors.blackcolor, fontSize: 16)),
                          ],
                        ),
                        Image.asset('assets/back5.png')
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
