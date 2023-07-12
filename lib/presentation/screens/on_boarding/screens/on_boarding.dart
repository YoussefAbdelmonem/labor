import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/button_widget.dart';
import 'package:labor_application/presentation/components/custom_text.dart';
import 'package:labor_application/presentation/screens/login/login_screen.dart';
import 'package:labor_application/presentation/screens/on_boarding/widgets/list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  var boardController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body:SafeArea(
      child: Padding(
        padding:  EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Utils.openScreen(context, LoginScreen(),remove: true);

                },
                child: TextWidget(
                  "Skip".tr(),
                )
            ),
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.yellow,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                  count: boarding.length,
                ),


              ],
            ),
            16.ph,

            Center(
              child: ButtonWidget(
                onTap: () {
                  if (isLast)
                  {
                   Utils.openScreen(context, LoginScreen());
                  } else {
                    boardController.nextPage(
                      duration: Duration(
                        milliseconds: 750,
                      ),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                title: "Next".tr(),
              ),
            )
          ],
        ),
      ),
    ),

    );
  }
}
