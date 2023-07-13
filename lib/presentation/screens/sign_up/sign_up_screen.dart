import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:labor_application/core/themes/colors.dart';
import 'package:labor_application/core/utilis.dart';
import 'package:labor_application/presentation/components/button_widget.dart';
import 'package:labor_application/presentation/components/custom_text.dart';
import 'package:labor_application/presentation/components/edit_text_widget.dart';
import 'package:labor_application/presentation/screens/login/cubit/login_cubit.dart';
import 'package:labor_application/presentation/screens/sign_up/cubit/register_cubit.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          RegisterCubit cubit = BlocProvider.of(context);
          return Scaffold(
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(16.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: TextWidget(
                            "Sign Up".tr(),
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        16.ph,
                        Center(
                          child: TextWidget(
                            "Please Enter your Phone and password to continue".tr(),
                            fontSize: 22.sp,
                            textAlign: TextAlign.center,
                            color: AppColors.grey,
                          ),
                        ),
                        32.ph,
                        TextWidget(
                          "full name".tr(),
                          fontSize: 22.sp,
                          color: AppColors.black,
                        ),
                        16.ph,
                        TextFormFieldWidget(
                          onChanged: (value) {
                            cubit.updateName(value);
                          },

                          controller: cubit.nameController,

                          suffixIcon: const Icon(
                            Icons.phone,
                            color: AppColors.primary,

                          ),
                          hintText: "Enter Your full name".tr(),


                        ),
                        16.ph,
                        TextWidget(
                          "phone".tr(),
                          fontSize: 22.sp,
                          color: AppColors.black,
                        ),
                        16.ph,
                        TextFormFieldWidget(
                          onChanged: (value) {
                            cubit.updatePhone(value);
                          },

                          controller: cubit.phoneController,

                          suffixIcon: const Icon(
                            Icons.phone,
                            color: AppColors.primary,

                          ),
                          hintText: "Enter Your Phone".tr(),


                        ),
                        32.ph,
                        TextWidget(
                          "password".tr(),
                          fontSize: 22.sp,
                          color: AppColors.black,
                        ),
                        16.ph,
                        TextFormFieldWidget(
                          onChanged: (value) {
                            cubit.updatePassword(value);
                          },

                          controller: cubit.passwordController,

                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: AppColors.primary,

                          ),
                          hintText: "Enter Your Password".tr(),


                        ),
                        16.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: () {}, child: TextWidget(
                              "Forget Password".tr(),
                              color: AppColors.black,
                              fontSize: 16.sp,

                            )),
                          ],
                        ),
                        16.ph,
                        ButtonWidget(
                          title: "Sign Up".tr(),

                          onTap: (){},
                          buttonColor: AppColors.primary,

                        ),
                        16.ph,
                        Center(
                          child: TextWidget(
                            "OR".tr(),
                            fontSize: 22.sp,
                            color: AppColors.black,
                          ),
                        ),
                        16.ph,
                        ButtonWidget(
                          onTap: (){},
                          buttonColor: AppColors.textFormField,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/facebook.svg"),
                              8.pw,
                              TextWidget("Facebook".tr(),)
                            ],
                          ),

                        ),
                        16.ph,
                        ButtonWidget(

                          onTap: (){},
                          buttonColor: AppColors.textFormField,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/images/google.svg"),
                              8.pw,
                              TextWidget("Google".tr(),)
                            ],
                          ),

                        ),
                        16.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              "Don't have an account?".tr(),

                            ),
                            4.pw,
                            TextButton(onPressed: ()
                            {
                              Utils.openScreen(context, SignUpScreen());
                            }, child: TextWidget(
                              "Sign Up".tr(),
                              fontWeight: FontWeight.bold,
                            ))
                          ],
                        )




                      ],
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
