import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/presentation/components/custom_text.dart';
import 'package:labor_application/presentation/layout/cubit/home_cubit.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({required this.cubit});

  HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32.r),
            topLeft: Radius.circular(32.r),
          ),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navBarItem(
              "assets/images/Home_light.svg",
              '',
              0,
            ),
            navBarItem("assets/images/Order.svg", '', 1),
            navBarItem("assets/images/darhboard.svg", "", 2),
            navBarItem("assets/images/User.svg", '', 3),
          ],
        ));
  }

  Widget navBarItem(String path, String title, int index,
      {VoidCallback? onTap}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          cubit.changeTab(index);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                path,
                color: cubit.tabController.index == index
                    ? AppColors.primary
                    : AppColors.grey,
              ),
              SizedBox(
                height: 5.h,
              ),
              TextWidget(
                title.tr(),
                color: cubit.tabController.index == index
                    ? AppColors.primary
                    : AppColors.grey,
                fontSize: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
