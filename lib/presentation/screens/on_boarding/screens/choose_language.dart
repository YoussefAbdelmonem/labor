import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/button_widget.dart';
import 'package:labor_application/presentation/components/custom_text.dart';
import 'package:labor_application/presentation/screens/on_boarding/screens/on_boarding.dart';

class ChooseLanguagesScreen extends StatelessWidget {
  const ChooseLanguagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              64.ph,
              SvgPicture.asset("assets/images/on_boarding.svg"),
              32.ph,
              TextWidget(
                "Find your home service".tr(),
                maxLines: 2,
                fontSize: 48,
              ),
              32.ph,
              TextWidget(
                "select language".tr(),
                maxLines: 1,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              RadioListTile(
                value: Locale('en', "US"),
                groupValue: context.locale,
                activeColor: AppColors.primary,
                controlAffinity: ListTileControlAffinity.trailing,

                title: TextWidget(
                  "English".tr(),
                ),
                onChanged: (e) {
                  context.setLocale(Locale('en', "US"));
                },
              ),
              Divider(
                height: 1,
                color: AppColors.grey,
              ),
              16.ph,
              RadioListTile(
                value: Locale('ar', "EG"),
                controlAffinity: ListTileControlAffinity.trailing,
                groupValue: context.locale,
                activeColor: AppColors.primary,
                title: TextWidget(
                  "Arabic".tr(),
                ),
                onChanged: (e) {
                  context.setLocale(Locale('ar', "EG"));
                },
              ),
              Divider(
                height: 1,
                color: AppColors.grey,
              ),
              16.ph,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget("By creating an account, you agree to our".tr(),fontSize: 18.sp,),
                    8.ph,
                    TextWidget("terms and conditions".tr(),color: AppColors.primary,fontSize: 18.sp),

                  ],
                ),
              ),
              16.ph,
              Center(child: ButtonWidget(
                title: "Enter".tr(),
                onTap: (){
                  Utils.openScreen(context, OnBoardingScreen());
                },
              )),
              16.ph,
            ],
          ),
        ),
      ),
    ));
  }
}
