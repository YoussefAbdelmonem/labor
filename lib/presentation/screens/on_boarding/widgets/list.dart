
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

List<String> headers = [
  "Easy Process".tr(),
  "Expert People".tr(),
  "All In One Place".tr(),
];
List<String> description = [
  "1".tr(),
  "2".tr(),
  "3".tr(),
];

List<Image> images = [
  Image.asset("assets/images/on_boarding1.png"),
  Image.asset("assets/images/on_boarding2.png"),
  Image.asset("assets/images/on_boarding3.png"),
];
class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body,
  });
}
List<BoardingModel> boarding = [
  BoardingModel(
    image: 'assets/images/on_boarding1.png',
    title: "Easy Process".tr(),
    body:  "1".tr(),
  ),
  BoardingModel(
    image: 'assets/images/on_boarding2.png',
    title: "Expert People".tr(),
    body:  "2".tr(),
  ),
  BoardingModel(
    image: 'assets/images/on_boarding3.png',
    title: "All In One Place".tr(),
    body:  "3".tr(),
  ),
];

Widget buildBoardingItem(BoardingModel model) => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Image(
        image: AssetImage('${model.image}'),
      ),
    ),
    SizedBox(
      height: 30.0,
    ),
    Text(
      '${model.title}',
      style: TextStyle(
        fontSize: 24.0,
      ),
    ),
    SizedBox(
      height: 15.0,
    ),
    Text(
      '${model.body}',
      style: TextStyle(
        fontSize: 14.0,
      ),
    ),
    SizedBox(
      height: 30.0,
    ),
  ],
);
