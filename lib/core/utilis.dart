
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/presentation/components/custom_text.dart';

class Utils {
  static bool? intro;
  static String token = '';
  static bool isLogin = true;
  static bool dataCompleted = false;
  static bool onBoard = true;
  static bool start = true;
  static bool FirstOpen = true;
  static String name = '';
  static String UserId = '';
  static String email = '';
  static String phone = '';
  static String FCMToken = '';
  static String UserImage = '';
  static String complaint_phone = '';
  static String privacy = '';

  static void showDialogScreen(
      {required BuildContext context,

        VoidCallback? onTap,
        VoidCallback? onCancel,}) {
    showDialog(
        context: context,
        builder: (context) => Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Align(
                //     alignment: AlignmentDirectional.topEnd,
                //     child: GestureDetector(
                //         onTap: () => Navigator.pop(context),
                //         child: const Icon(Icons.clear))),
                SizedBox(height: 16.h),
                Image.asset("assets/images/mark.png"),
                SizedBox(height: 16.h),
                TextWidget(
                    "Your_request_has_been_sent".tr(),
                    fontSize: 16.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.bold),
                SizedBox(height: 16.h),
                TextWidget(
                    "Your_request_is_under_review_and_we_will_respond_to_you_as_soon_as_possible".tr(),
                    fontSize: 14.sp,
                    color: AppColors.greyText,
                    fontWeight: FontWeight.w400),

              ],
            ),
          ),
        ));
  }
  static const ThemeMode appMode = ThemeMode.light;
  static void openScreen(BuildContext? context, Widget screen,
      {bool replacment = false, bool remove = false}) {
    if (context == null) {
      return;
    }

    if (remove) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => screen),
            (route) => false,
      );
    } else if (replacment) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => screen));
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    }
  }

  static Widget backWidget(BuildContext context,
      {VoidCallback? onBack, bool arabicLang = true}) {
    return GestureDetector(
      onTap: () {
        if (onBack != null) {
          onBack.call();
        }
        Navigator.pop(context);
      },
      child:Icon(
        Icons.arrow_back_ios,
        color: mainColor,
      ),
    );
  }

}

class BackWidget extends StatelessWidget {
  BackWidget({super.key, this.onBack, this.color, this.icon, this.size});
  VoidCallback? onBack;
  Color? color;
  IconData? icon;
  double? size;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (onBack != null) {
            onBack?.call();
          } else {
            Navigator.pop(context);
          }
        },
        child: Icon(
          icon ?? Icons.arrow_back_outlined,
          color: color ?? AppColors.white,
          size: size,
        ));
  }
}

extension Photo on String {
  String png([String? path = "icons"]) => 'assets/$path/$this.png';
  String svg([String path = "icons"]) => 'assets/$path/$this.svg';
  String jpeg([String path = "icons"]) => 'assets/$path/$this.jpeg';
}

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
    height: toDouble().h,
  );
  SizedBox get pw => SizedBox(
    width: toDouble().w,
  );

}

