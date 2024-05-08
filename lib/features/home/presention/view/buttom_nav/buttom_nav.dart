import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/features/home/presention/view/home_view.dart';
import 'package:flutter_application_2/features/profile/view/profile_view.dart';
import 'package:flutter_application_2/features/search/search_view.dart';
import 'package:flutter_application_2/features/shop/shop_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

int _index = 0;
List<Widget> Screens = [
  const Home_view(),
  const search(),
  const shop(),
  const profile()
];

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg'),
              activeIcon: SvgPicture.asset(
                'assets/home.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/search.svg'),
              activeIcon: SvgPicture.asset(
                'assets/search.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/shop.svg'),
              activeIcon: SvgPicture.asset(
                'assets/shop.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Profile.svg'),
              activeIcon: SvgPicture.asset(
                'assets/Profile.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.blackcolor, BlendMode.srcIn),
              ),
              label: '')
        ],
      ),
    );
  }
}
