// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ovata_agent/core/themes/colors.dart';
// import 'package:ovata_agent/presentaition/components/custom_text.dart';

// import '../screens/intro/cubit/intro_cubit.dart';

// class SliderWidget extends StatelessWidget {
//   List<slider> imgs;
//   Function(int index)? callback;

//   SliderWidget({Key? key, required this.imgs, this.callback}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       options: CarouselOptions(
//           height: 0.45.sh,
//           enableInfiniteScroll: false,
//           onPageChanged: (index, reason) {
//             callback?.call(index);
//           },
//           enlargeCenterPage: true,
//           enlargeFactor: 0.2,
//           viewportFraction: 0.88),
//       items: imgs.map((i) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8.0),
//                 image: DecorationImage(
//                     // image: NetworkImage(
//                     image: AssetImage(
//                       i.image ?? '',
//                     ),
//                     fit: BoxFit.cover),
//               ),
//               child: Center(
//                 child: Container(
//                   width: 110.w,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextWidget(
//                         'London',
//                         fontSize: 10.sp,
//                         fontWeight: FontWeight.w500,
//                         color: AppColors.white,
//                         textAlign: TextAlign.center,
//                       ),
//                       TextWidget(
//                         i.title ?? '',
//                         fontSize: 25.sp,
//                         fontWeight: FontWeight.w700,
//                         fontFamily: 'switzer',
//                         color: AppColors.white,
//                         maxLines: 2,
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }
