import 'package:doc_app/homescreen/constants/app_color.dart';
import 'package:doc_app/homescreen/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class DoctorCard extends StatelessWidget {
  final String? docImage;
  final String? docName;
  final String? docReviews;

  const DoctorCard({super.key, this.docImage, this.docName, this.docReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.h,
      width: 190.h,
      decoration: BoxDecoration(
        color: AppColor.appContainerColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 90.h,
              width: 90.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(docImage ?? AppImages.drVec1),
            ),
            CustomText(
              text: docName ?? 'Dr. Ranjini wigham',
              textColor: AppColor.appFont,
              fontWeight: FontWeight.w500,
              fontSize: 16.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: AppColor.appBannerColor,
                  size: 20,
                ),
              const  SizedBox(width: 5),
                CustomText(
                  text: docReviews ?? '5.0 (5,279 Reviews)',
                  textColor: const Color(0xFF757575),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
