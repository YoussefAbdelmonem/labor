import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import 'custom_text.dart';

class EditTextWidget extends StatefulWidget {
  final String? hintText, label, errorText;
  final TextInputType type;
  bool password;
  final bool expanded;
  Color activeBorderColor, borderColor, backgroundColor;
  bool floatingHint;
  int? maxLines;
  int? minLines;
  void Function()? onTap;
  FocusNode? focusNode;
  TextAlign textalign;
  int? maxLengh;
  TextDirection? textdirection;
  EdgeInsetsDirectional? contentPadding;
  double borderRadius;
  Widget? prefixIcon, suffixIcon, suffixWidget;
  TextEditingController? controller;
  InputDecoration? inputDecoration;
  ValueChanged<String>? onChanged;
  ValueChanged<String?>? onSaved;
  String? Function(String?)? validate;
  bool? enable;
  bool? readOnly;
  EditTextWidget(
      {required this.onChanged,
      this.onSaved,
      this.readOnly,
      this.enable,
      this.validate,
      this.onTap,
      this.password = false,
      this.expanded = false,
      this.floatingHint = false,
      this.type = TextInputType.text,
      this.hintText = "",
      this.label,
      this.textalign = TextAlign.start,
      this.maxLengh,
      this.errorText,
      this.controller,
      this.activeBorderColor = AppColors.borderMainColor,
      this.borderRadius = 8.0,
      this.borderColor = AppColors.borderMainColor,
      this.backgroundColor = Colors.white,
      this.maxLines,
      this.minLines = 1,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixWidget,
      this.inputDecoration,
      this.contentPadding,
      this.textdirection,
      Key? key})
      : super(key: key);

  @override
  State<EditTextWidget> createState() => _EditTextWidgetState();
}

class _EditTextWidgetState extends State<EditTextWidget> {
  bool? isPass;
  @override
  void initState() {
    isPass = widget.password ? true : false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      readOnly: widget.readOnly ?? false,
      enabled: widget.enable ?? true,
      validator: widget.validate,
      maxLength: widget.maxLengh,
      focusNode: widget.focusNode,

      controller: widget.controller,
      maxLines: widget.maxLines ?? 1,
      minLines: widget.minLines,
      // autofocus: false,
      // expands: widget.expanded,
      textAlign: widget.textalign,
      textDirection: widget.textdirection,
      style: TextStyle(
          color: AppColors.black,
          fontSize: 15,
          fontFamily: "Tajawal",
          fontWeight: FontWeight.w600),
      decoration: widget.inputDecoration ??
          InputDecoration(
              // isDense: true,
              contentPadding: widget.contentPadding,

              filled: true,
              fillColor: widget.backgroundColor,
              prefixIcon: widget.prefixIcon,
              suffix: widget.suffixWidget,
              suffixIcon: widget.suffixIcon ??
                  (isPass!
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              widget.password = !widget.password;
                            });
                          },
                          icon: Icon(
                            widget.password
                                ? Icons.remove_red_eye_outlined
                                : Icons.visibility_off,
                            color: AppColors.grey,
                          ),
                        )
                      : widget.suffixIcon),
              errorText: widget.errorText,
              labelText: widget.label,
              //label: TextWidget(widget.label),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: widget.activeBorderColor, width: 1.0),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.borderRadius))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: widget.borderColor, width: 1.0),
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.borderRadius))),
              labelStyle: TextStyle(color: AppColors.primary,fontFamily: "Tajawal"),
              hintStyle: TextStyle(color: AppColors.black, fontSize: 12.sp,fontFamily: "Tajawal"),
              hintText: widget.hintText),
      keyboardType: widget.type,
      obscureText: widget.password,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      onTap: () {
        widget.onTap?.call();
      },
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  String? hintText, label, errorText;
  final TextInputType type;
  final bool password;
  final bool exp, expanded;
  Color activeBorderColor, borderColor, backgroundColor;
  Color? labelColor;
  bool floatingHint;
  int? maxLines;
  int? minLines;
  double borderRadius;
  Widget? prefixIcon, suffixIcon, suffixWidget;
  TextEditingController? controller;
  InputDecoration? inputDecoration;
  ValueChanged<String>? onChanged;
  TextAlignVertical? textAlignVertical;
  bool? enable;

  TextFieldWidget(
      {required this.onChanged,
      this.password = false,
      this.exp = false,
      this.expanded = false,
      this.floatingHint = true,
      this.type = TextInputType.text,
      this.hintText = "",
      this.label,
      this.borderRadius = 8.0,
      this.errorText,
      this.labelColor,
      this.textAlignVertical,
      this.controller,
      this.activeBorderColor = Colors.white,
      this.borderColor = Colors.white,
      this.backgroundColor = Colors.white,
      this.maxLines,
      this.minLines = 1,
      this.prefixIcon,
      this.suffixIcon,
      this.suffixWidget,
      this.inputDecoration,
      this.enable,
      Key? key})
      : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  // FocusNode focusNode = FocusNode();
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   focusNode.addListener(() {
  //     if(focusNode.hasFocus){
  //       widget.hintText= '';
  //     }else{
  //       widget.hintText = widget.hintText;
  //     }
  //     setState(() {
  //
  //     });
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.56.h,
      child: TextFormField(
        // focusNode: focusNode,
        textAlignVertical: widget.textAlignVertical,
        controller: widget.controller,
        // inputFormatters: exp ? [CardExpirationFormatter()] : [],
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        autofocus: false,
        expands: widget.expanded,
        enabled: widget.enable ?? true,
        decoration: widget.inputDecoration ??
            InputDecoration(
                filled: true,
                fillColor: widget.backgroundColor,
                prefixIcon: widget.prefixIcon,
                suffix: widget.suffixWidget,
                suffixIcon: widget.suffixIcon,
                errorText: widget.errorText,
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: widget.activeBorderColor, width: 1.0),
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.borderRadius))),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: widget.borderColor, width: 1.0),
                    borderRadius:
                        BorderRadius.all(Radius.circular(widget.borderRadius))),
                hintText: widget.hintText,
                labelStyle: TextStyle(
                    color: widget.labelColor ?? AppColors.black,
                    fontSize: 12.sp),
                hintStyle: TextStyle(color: AppColors.black, fontSize: 14.sp),
                labelText: widget.floatingHint ? widget.label : ""),
        keyboardType: widget.type,
        obscureText: widget.password,
        onChanged: widget.onChanged,
      ),
    );
  }
}
