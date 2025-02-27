import 'package:doc_app/homescreen/constants/app_color.dart';
import 'package:doc_app/homescreen/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String? buttonText;
  const AppButton({super.key, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        height: 48.h,
        width: 400.h,
        decoration: BoxDecoration(
          color: AppColor.appBannerColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Center(
            child: CustomText(
          text: buttonText ?? 'Get Started ',
          textColor: AppColor.appColor,
          fontSize: 18.sp,
        )),
      ),
    );
  }
}
