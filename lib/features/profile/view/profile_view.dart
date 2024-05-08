import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/intro/presentaion/view/welcome_view.dart';
import 'package:flutter_application_2/features/profile/view/Payment/Payment_view.dart';
import 'package:flutter_application_2/features/profile/view/address.dart';
import 'package:gap/gap.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;
User? user;

Future<void> _getUser() async {
  user = _auth.currentUser;
}

Future _signOut() async {
  await _auth.signOut();
}

class _profileState extends State<profile> {
  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'profile',
          style: GetTitleStyle(color: AppColors.blackcolor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    child: Image.asset(
                      'assets/avatar.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Gap(20),
                  Column(
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahmoud baioumy ',
                        style: GetTitleStyle(
                            color: AppColors.blackcolor, fontSize: 14),
                      ),
                      const Gap(5),
                      Text(
                        'Mahmoudbaioumy@gmail.com ',
                        style: GetTitleStyle(
                            color: AppColors.greycolor, fontSize: 10),
                      ),
                    ],
                  ),
                  const Gap(35),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: AppColors.blackcolor,
                      ))
                ],
              ),
            ),
            const Gap(15),
            /////////////////////////first///////////////////////////////////////////////////
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: AppColors.greycolor,
                  ),
                  const Gap(20),
                  Text(
                    'Address',
                    style: GetbodyStyle(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        push(context, const address());
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            const Gap(10),
            /////////////////////////////second//////////////////////////////////////////////////
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.payment_outlined,
                    color: AppColors.greycolor,
                  ),
                  const Gap(20),
                  Text(
                    'Payment method',
                    style: GetbodyStyle(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        push(context, const Payment_view());
                      },
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            const Gap(10),
            //////////////////////////////////third//////////////////////////////////////
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.view_compact_alt_outlined,
                    color: AppColors.greycolor,
                  ),
                  const Gap(20),
                  Text(
                    'Voucher',
                    style: GetbodyStyle(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            const Gap(10),
            /////////////////////fouth/////////////////////////
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: AppColors.greycolor,
                  ),
                  const Gap(20),
                  Text(
                    'My Wishlist',
                    style: GetbodyStyle(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            const Gap(10),
            ////////////5///////////////////////////////////////////////
            Container(
              margin: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.greycolor,
                  ),
                  const Gap(20),
                  Text(
                    'Rate this app',
                    style: GetbodyStyle(),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
            ),
            const Gap(15),
            //////////////////6/////////////////////////////
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const Welcome_Page(),
                    ),
                    (Route<dynamic> route) => false);
                _signOut();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.red,
                ),
                height: 60,
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    const Gap(150),
                    Text(
                      'Log out',
                      style: GetTitleStyle(color: AppColors.whitecolor),
                    ),
                  ],
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
