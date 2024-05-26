import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/functions/routing.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/profile/userSettings.dart';
import 'package:flutter_application_2/features/profile/view/Payment/Payment_view.dart';
import 'package:flutter_application_2/features/profile/view/address.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
  String? _imagePath;
  File? file;
  String? profileUrl;

  String? userId;

  Future<void> _getUser() async {
    user = _auth.currentUser;
   
    print(_auth.currentUser);
  }

  uploadImageToFireStore(File image, String imageName) async {
    Reference ref =
        FirebaseStorage.instanceFor(bucket: 'gs://flux-4aca0.appspot.com')
            .ref()
            .child('user/${FirebaseAuth.instance.currentUser!.uid}/$imageName');
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    await ref.putFile(image, metadata);
    String url = await ref.getDownloadURL();
    return url;
  }

  Future<void> _pickImage() async {
    _getUser();
    final pickedFile =
    /////// 
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
        file = File(pickedFile.path);
      });
    }
    if (file != null) {
      profileUrl = await uploadImageToFireStore(
          file!, '${DateTime.now().toString()}.${file?.path.split('.').last}');
      FirebaseFirestore.instance.collection('user').doc(user?.email).update(
        {
          'image': profileUrl,
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whitecolor,
        elevation: 0,
        title: Text(
          'profile',
          style: GetTitleStyle(color: AppColors.blackcolor, fontSize: 20),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            icon: Icon(
              Icons.settings,
              color: AppColors.blackcolor,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const UserSettings()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('user')
                .doc(userId)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              var userData = snapshot.data;
              return Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundColor: AppColors.whitecolor,
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.whitecolor,
                                    radius: 60,
                                    backgroundImage:
                                        (userData?.data()?['image'] != null)
                                            ? NetworkImage(
                                                userData?.data()?['image'])
                                            : (_imagePath != null)
                                                ? FileImage(File(_imagePath!))
                                                    as ImageProvider
                                                : const AssetImage(
                                                    'assets/avatar.png'),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    await _pickImage();
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                    child: const Icon(
                                      Icons.camera_alt_rounded,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${user?.displayName}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GetTitleStyle(
                                        color: AppColors.blackcolor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "${user?.email}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GetbodyStyle(),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded))
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
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded))
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
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded))
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
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded))
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
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_rounded))
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
