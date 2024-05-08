import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/home/presention/view/buttom_nav/buttom_nav.dart';
import 'package:flutter_application_2/features/intro/presentaion/view/onboarding.dart';
import 'package:gap/gap.dart';

class Welcome_Page extends StatefulWidget {
  const Welcome_Page({super.key});

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

class _Welcome_PageState extends State<Welcome_Page> {
  User? user;
  Future<void> _getUser() async {
    user = FirebaseAuth.instance.currentUser;
  }

  @override
  void initState() {
    super.initState();
    _getUser();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) =>
            (user != null) ? const bottom_nav() : const OnboardingView(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image.png',
            color: Colors.grey.withOpacity(0.9),
            colorBlendMode: BlendMode.modulate,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            bottom: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  Text(
                    'Welcome to GemStore!',
                    style: GetTitleStyle(fontSize: 25),
                  ),
                  const Gap(10),
                  Text(
                    ' The home for a fashionista',
                    style: GetTitleStyle(
                        fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  const Gap(70),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
