import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import 'custom_text.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  double width, height, radius;
  Widget? child;
  Gradient? gradient;
  Color textColor, buttonColor, borderColor;
  void Function()? onTap;
  bool withBorder;

  ButtonWidget(
      {Key? key,
      this.gradient,
      this.title = "OK",
      this.width = 350.0,
      this.height = 60.0,
      this.onTap,
      this.child,
      this.textColor = Colors.white,
      this.buttonColor = AppColors.primary,
      this.borderColor = AppColors.primary,
      this.withBorder = false,
      this.radius = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                radius,
              ),
              side: withBorder
                  ? BorderSide(
                      color: borderColor,
                    )
                  : const BorderSide(
                      color: Colors.transparent,
                    ),
            ),
          ),
        ),
        child: child ??
            TextWidget(
              title,
              fontSize: 24.sp,
              textAlign: TextAlign.center,
              color: textColor,
            ),
      ),
    );
  }
}
