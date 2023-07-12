import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/custom_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.all(16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

      children: [
            TextWidget(
              "Login".tr(),
              fontSize: 26.sp,
              fontWeight: FontWeight.bold,

            ),
            16.ph,
            TextWidget(
              "Please Enter your Phone and password to continue".tr(),
              fontSize: 22.sp,
              color: AppColors.grey,


            ),
            16.ph,
      ],
    ),
          ),
        ));
  }
}
