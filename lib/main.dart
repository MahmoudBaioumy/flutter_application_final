import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/utils/app_colors.dart';
import 'package:flutter_application_2/core/utils/text_styles.dart';
import 'package:flutter_application_2/features/auth/presention/view_model/auth_cubit.dart';
import 'package:flutter_application_2/features/intro/presentaion/view/welcome_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyAgF7UsIKTUQV64AFMiaOpbToAo80EdRzk',
        appId: 'com.example.flutter_application_2',
        messagingSenderId: '556108215366',
        projectId: 'flux-4aca0'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.whitecolor,
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: AppColors.blackcolor,
                unselectedItemColor: Colors.grey[900],
                backgroundColor: AppColors.whitecolor,
                showSelectedLabels: false,
                showUnselectedLabels: false),
            appBarTheme: AppBarTheme(backgroundColor: AppColors.whitecolor),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: GetbodyStyle(),
              fillColor: AppColors.whitecolor,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            )),
        debugShowCheckedModeBanner: false,
        home: const Welcome_Page(),
      ),
    );
  }
}
