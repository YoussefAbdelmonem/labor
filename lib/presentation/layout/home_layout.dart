

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor_application/presentation/layout/cubit/home_cubit.dart';
import 'package:labor_application/presentation/layout/widgets/custom_bottom_nav_bar.dart';
import 'package:labor_application/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:labor_application/presentation/screens/home/home_screen.dart';
import 'package:labor_application/presentation/screens/orders/order_screen.dart';
import 'package:labor_application/presentation/screens/user/user_screen.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..initTabBar(this),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeCubit cubit = BlocProvider.of(context);
          return Scaffold(
              body:TabBarView(
                  controller: cubit.tabController,
                  physics: NeverScrollableScrollPhysics(),

                  children:  [
                    HomeScreen(),
                    OrderScreen(),
                    DashboardScreen(),
                    UserScreen()

                  ]

              )
              ,// cubit.screens[cubit.currentState],
              bottomNavigationBar:CustomBottomNavBar(cubit: cubit)

          );
        },
      ),
    );
  }
}
