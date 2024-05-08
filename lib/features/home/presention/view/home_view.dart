import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/home/presention/view/view_page/beautiful.dart';
import 'package:flutter_application_2/features/home/presention/view/view_page/tapbarview_acces.dart';
import 'package:flutter_application_2/features/home/presention/view/view_page/tapbarview_men.dart';
import 'package:flutter_application_2/features/home/presention/view/view_page/tapbarview_wo.dart';
import 'package:gap/gap.dart';

class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  // int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            title: Text(
              'Gemstore',
              style: GetTitleStyle(color: AppColors.blackcolor, fontSize: 22),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_sharp))
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Gap(10),
                ButtonsTabBar(
                  radius: 500,
                  backgroundColor: AppColors.blackcolor,
                  borderWidth: 1,
                  buttonMargin: const EdgeInsets.only(left: 50, right: 30),
                  borderColor: Colors.black,
                  labelStyle: GetbodyStyle(color: Colors.black),
                  unselectedBackgroundColor: Colors.grey[100],
                  unselectedLabelStyle: GetbodyStyle(),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                  // Add your tabs here
                  tabs: [
                    //first women
                    Tab(
                      icon: Icon(
                        Icons.female,
                        size: 40,
                        color: AppColors.greycolor,
                      ),
                    ),
                    //second men
                    Tab(
                      icon: Icon(
                        Icons.male,
                        size: 40,
                        color: AppColors.greycolor,
                      ),
                    ),
                    Tab(
                      child: Image.asset(
                        'assets/tap1.png',
                        fit: BoxFit.cover,
                        height: 30,
                      ),
                    ),
                    Tab(
                      child: Image.asset(
                        'assets/tap2.png',
                        fit: BoxFit.cover,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(children: [
                    tap_view_w(),
                    tapview_men(),
                    tapviwe_acss(),
                    deau_view(),
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
