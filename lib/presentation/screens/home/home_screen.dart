import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/custom_text.dart';
import 'package:labor_application/presentation/screens/notifications/notifications_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset("assets/images/labor.svg"),
          leading: IconButton(
            onPressed: () {
              Utils.openScreen(context, NotificationsScreen());
            },
            icon: Icon(
              Icons.notifications,
              color: AppColors.black,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            children: [
              32.ph,
              Row(children: [
                TextWidget("good morning".tr(),
                    color: AppColors.black, fontSize: 20.sp),
                8.pw,
                TextWidget("YOUSSEF", color: AppColors.yellow, fontSize: 20.sp),
              ]),
              16.ph,
              TextWidget(
                "Find your home service Need a helping hand today?",
                color: AppColors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                maxLines: 2,
              ),
              16.ph,
              Container(
                color: AppColors.greenForm,
                height: 100.h,
                width: 0.9.sw,
                child: Row(
                  children: [
                    16.pw,

                    CircleAvatar(
                      backgroundColor: Colors.white,
                       backgroundImage: AssetImage("assets/images/dott.png"),
                      radius: 16.w,

                    ),
                    16.pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        16.ph,
                        TextWidget("your location", color: AppColors.grey,fontWeight: FontWeight.w700, fontSize: 18.sp),
                        8.ph,
                        TextWidget("Jiddah Alexander Language School , ALS", color: AppColors.white, fontSize: 18.sp),
                      ],
                    )
                  ],
                ),
              ),
              16.ph,

              PageView(
                children: [

                ],
              )
            ],
          ),
        ));
  }
}
