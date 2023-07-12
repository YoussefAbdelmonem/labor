import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/base_stateless.dart';
import 'package:labor_application/presentation/screens/on_boarding/screens/choose_language.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseStateless(
      backgroundColor: AppColors.primary,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         image: Image.asset(
        //           "background".png('images'),
        //         ).image,
        //         fit: BoxFit.fill)),
        child: Center(
          child: OpacityAnimatedWidget.tween(
            opacityEnabled: 1,
            opacityDisabled: 0,
            duration: const Duration(milliseconds: 2000),
            enabled: true,
            animationFinished: (finished)  {
              Utils.openScreen(context, ChooseLanguagesScreen());

            },
            child: Image.asset(
              "assets/images/backgrond.png",
              width: 200.w,
              height: 250.h,
            ),
          ),
        ),
      ),
    );
  }
}
