import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TextStyleEnum {
  normal,
  title,
  caption,
}

class CustomText extends StatelessWidget {
  TextStyle getTextStyle(TextStyleEnum textStyleEnum,
      {Color? color,
      double? fontsize,
      String? fontFamily,
      TextOverflow? overflow,
      TextDecoration? decoration,
      FontWeight? weight,
      double? height,
      BuildContext? context}) {
    switch (textStyleEnum) {
      case TextStyleEnum.title:
        return TextStyle(
                height: height,
                fontSize: 20.sp,
                color: AppColors.black,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w600)
            .copyWith(
                decoration: decoration,
                color: color ?? AppColors.black,
                fontWeight: weight,
                fontSize: fontsize,
                overflow: overflow ?? TextOverflow.visible,
                height: height,
                fontFamily: fontFamily);
      case TextStyleEnum.caption:
        return TextStyle(
                fontSize: 14.sp,
                height: height,
                color: AppColors.black,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w400)
            .copyWith(
                decoration: decoration,
                color: color ?? AppColors.black,
                fontWeight: weight,
                fontSize: fontsize,
                height: height,
                overflow: overflow ?? TextOverflow.visible,
                fontFamily: fontFamily);

      default:
        return TextStyle(
                fontSize: 16.sp,
                color: AppColors.black,
                height: height,
                fontFamily: "Tajawal",
                fontWeight: FontWeight.w600)
            .copyWith(
                decoration: decoration,
                color: color ?? AppColors.black,
                fontWeight: weight,
                fontSize: fontsize,
                height: height,
                overflow: overflow ?? TextOverflow.visible,
                fontFamily: fontFamily);
    }
  }

  const CustomText(
    this.text, {
    Key? key,
    this.textStyleEnum,
    this.color,
    this.fontsize,
    this.weight,
    this.fontFamily,
    this.align,
    this.decoration,
    this.overflow,
    this.height,
    this.textDirection,
    this.maxLines,
  }) : super(key: key);
  final String text;
  final TextStyleEnum? textStyleEnum;
  final Color? color;
  final double? fontsize;
  final double? height;

  final String? fontFamily;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final TextAlign? align;
  final int? maxLines;
  final TextDirection? textDirection;
  final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      // textDirection: context.locale == Locale('en', 'US')
      //     ? TextDirection.ltr
      textDirection: textDirection ??
          ((context.locale == Locale('en', 'US'))
              ? TextDirection.ltr
              : TextDirection.rtl),
      style: getTextStyle(textStyleEnum ?? TextStyleEnum.normal,
          color: color,
          fontsize: fontsize,
          height: height,
          // fontFamily: fontFamily ?? context.locale == Locale('ar', 'EG')?"grotley": "stc",
          fontFamily: "Tajawal",
          overflow: overflow,
          decoration: decoration,
          weight: weight,
          context: context),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String? title;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isUnderLine;

  // ignore: use_key_in_widget_constructors
  const TextWidget(
       this.title,
      {this.fontSize,
      this.fontWeight,
      this.fontFamily,
      this.maxLines = 2,
      this.color,
      this.textAlign,
      this.isUnderLine = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? "",
      maxLines: maxLines,

      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: fontFamily ?? 'Tajawal',
        fontSize: fontSize ?? 16.sp,
        fontWeight: fontWeight,
        decoration: isUnderLine ? TextDecoration.underline : null,
        height: 1.2,
        // color: color ?? Theme.of(context).textTheme.bodyText1!.color,
        color: color ?? AppColors.black,
      ),
      textAlign: textAlign,
    );
  }
}



