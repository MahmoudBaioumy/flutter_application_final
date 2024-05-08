import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/auth/presention/view/register_view.dart';
import 'package:flutter_application_2/features/intro/data/OnboardingModel.dart';
import 'package:flutter_application_2/features/intro/presentaion/widgets/Onboardind_item.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _nameState();
}

class _nameState extends State<OnboardingView> {
  List<OnboardingModel> Screens = [
    OnboardingModel(
        image: 'assets/first.png',
        titel: 'Discover something new',
        body: 'Special new arrivals just for you'),
    OnboardingModel(
        image: 'assets/onbord3.png',
        titel: 'Update trendy outfit',
        body: 'Favorite brands and hottest trends'),
    OnboardingModel(
        image: 'assets/second.png',
        titel: 'Explore your true style',
        body: 'Relax and let us bring the style to you'),
  ];

  @override
  var pageController = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(color: AppColors.whitecolor),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(color: AppColors.Scafoldcolor),
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    //to take the index of page to use it
                    onPageChanged: (value) {
                      setState(() {
                        index = value;
                      });
                    },
                    controller: pageController,
                    itemCount: Screens.length,
                    itemBuilder: (context, index) {
                      return onboardingitem(model: Screens[index]);
                    },
                  ),
                ),
                SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                              activeDotColor: AppColors.whitecolor,
                              dotHeight: 7,
                              dotWidth: 7),
                        ),
                        const Gap(30),
                        custombutton(
                          text: 'Shopping Now',
                          onPressed: () {
                            pushwithReplacement(context, const register_view());
                          },
                          width: 200,
                          height: 50,
                          background: Colors.grey[600],
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
