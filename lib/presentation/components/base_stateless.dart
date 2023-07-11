import 'package:flutter/material.dart';
import 'package:labor_application/core/utilis.dart';

class BaseStateless extends StatelessWidget {
  final Widget body;
  final Widget? bottomNavBar;
  final Widget? floatingButton;
  final Color? backgroundColor;
  final AppBar? appBar;
  final bool? extendBody;
  final bool? resizeToAvoidBottomInset;

  const BaseStateless({Key? key,
    required this.body,
    this.appBar,
    this.bottomNavBar,
    this.floatingButton,
    this.extendBody,
    this.resizeToAvoidBottomInset,
    this.backgroundColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
      appBar: appBar,
      extendBody: extendBody ?? false,
      floatingActionButton: floatingButton,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background".png('images')),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(child: body)),
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavBar,
    );
  }
}

