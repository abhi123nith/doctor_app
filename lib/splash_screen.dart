import 'package:doc_app/bottom_bar.dart';
import 'package:doc_app/homescreen/constants/app_button.dart';
import 'package:doc_app/homescreen/constants/app_color.dart';
import 'package:doc_app/homescreen/constants/app_images.dart';
import 'package:doc_app/homescreen/constants/app_space.dart';
import 'package:doc_app/homescreen/constants/app_strings.dart';
import 'package:doc_app/homescreen/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void updateAppbar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  void initState() {
    updateAppbar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.appColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          vecOne(),
          vecTwo(),
          vecThree(),
          vecFour(),
          vecFive(),
          splashDescription(),
        ],
      ),
    );
  }

  Widget vecOne() {
    return Positioned(
      top: 30.h,
      child: Image.asset(
        AppImages.vec1,
        height: 79.h,
      ),
    );
  }

  Widget vecTwo() {
    return Positioned(
      top: 100.h,
      left: 325.h,
      child: Image.asset(
        AppImages.vec2,
        height: 113.h,
      ),
    );
  }

  Widget vecThree() {
    return Positioned(
        top: 548.h,
        child: Image.asset(
          AppImages.vec3,
          height: 76.h,
        ));
  }

  Widget vecFour() {
    return Positioned(
        top: 481.h,
        left: 400.h,
        child: Image.asset(
          AppImages.vec4,
          height: 85.29.h,
        ));
  }

  Widget vecFive() {
    return Positioned(
        top: 239.h,
        child: Image.asset(
          AppImages.vec5,
          height: 76.h,
        ));
  }

  Widget splashDescription() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSpace(
            height: 160.h,
          ),
          splashImage(),
          AppSpace(
            height: 78.h,
          ),
          CustomText(
            textColor: AppColor.appFont,
            fontWeight: FontWeight.w700,
            fontSize: 32.sp,
            text: AppText.appMotive,
          ),
          AppSpace(
            height: 16.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.h),
              child: CustomText(
                textColor: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 16.sp,
                text: AppText.appDescription,
              )),
          AppSpace(
            height: 64.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomBar(),
                  ));
            },
            child: const AppButton(),
          ),
        ],
      ),
    );
  }

  Widget splashImage() {
    return Container(
      height: 396.h,
      width: 396.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: const Color(0x1CD9D9D9),
          borderRadius: BorderRadius.circular(300.r)),
      child: Image.asset(AppImages.splashDoc),
    );
  }
}
