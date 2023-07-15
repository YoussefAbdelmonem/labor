
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';

class TabBarWidget extends StatefulWidget {
  int length;
  List<Tab> tabs;
  Function(int)? onTap;

  TabBarWidget({Key? key, required this.length, required this.tabs, this.onTap})
      : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: widget.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: mainColor,
      labelColor: mainColor,
      onTap: widget.onTap,
      isScrollable: true,
      indicatorColor: mainColor,
      tabs: widget.tabs,

      physics: BouncingScrollPhysics(),
      labelStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 12.sp,
        fontFamily: "Quicksand",




      ),

      controller: tabController,
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}
