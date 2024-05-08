import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/core/widgets/custom_but.dart';
import 'package:flutter_application_2/features/profile/profile_dit.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  final FirebaseStorage _storage =
      FirebaseStorage.instanceFor(bucket: 'gs://flux-4aca0.appspot.com');
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? _imagePath;
  File? file;
  String? profileUrl;

  User? user;
  String? UserID;

  Future<void> _getUser() async {
    user = FirebaseAuth.instance.currentUser;
    UserID = user?.uid;
  }

  uploadImageToFireStore(File image, String imageName) async {
    Reference ref =
        _storage.ref().child('user/${_auth.currentUser!.uid}$imageName');
    SettableMetadata metadata = SettableMetadata(contentType: 'image/jpeg');
    await ref.putFile(image, metadata);
    String url = await ref.getDownloadURL();
    return url;
  }

  Future<void> _pickImage() async {
    _getUser();
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
        file = File(pickedFile.path);
      });
    }
    profileUrl = await uploadImageToFireStore(file!, 'doc');
    FirebaseFirestore.instance.collection('user').doc(UserID).set({
      'image': profileUrl,
    }, SetOptions(merge: true));
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
          ' profile',
          style: GetTitleStyle(
            color: AppColors.blackcolor,
            fontSize: 20,
          ),
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
            onPressed: () async {
              await FirebaseAuth.instance
                  .sendPasswordResetEmail(email: 'mbaioumy84@gmail.com');
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => const UserDetails()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('user')
                .doc(user?.uid)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              var userData = snapshot.data;
              print(userData!['name']);
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
                                    backgroundImage: (userData['image'] != null)
                                        ? NetworkImage(userData['image'])
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
                                    child: Icon(
                                      Icons.camera_alt_rounded,
                                      size: 20,
                                      color: AppColors.blackcolor,
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
                                    "${userData['name']}",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GetTitleStyle(),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  (userData['city'] == null)
                                      ? custombutton(
                                          text: ' Profile Setting',
                                          height: 40,
                                          onPressed: () {},
                                        )
                                      : Text(
                                          userData['city'],
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
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "نبذه تعريفيه",
                          style: GetbodyStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          userData['bio'] ?? 'لم تضاف',
                          style: GetbodyStyle(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "معلومات التواصل",
                          style: GetbodyStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
              );
            }),
      ),
    );
  }
}
