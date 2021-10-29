import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.labelText = '',
    this.icon,
    required this.hintText,
    this.fontSize,
    this.textColor,
    this.obscure = false,
    this.textInputType,
    this.verticalPadding,
    this.horizontalPadding,
    this.errorMessage,
    this.lengthErrorMessage,
    this.minLength = 3,
    this.activeValidation = true,
    this.prefixIcon,
    this.suffixIcon, this.controller, this.onChanged,
  }) : super(key: key);
  final String labelText, hintText;
  final IconButton? icon;
  final double? fontSize;
  final Color? textColor;

  final bool obscure;

  final TextInputType? textInputType;
  final double? verticalPadding;
  final double? horizontalPadding;

  final String? errorMessage, lengthErrorMessage;

  final int minLength;
  final bool activeValidation;
  final FaIcon? prefixIcon;
  final FaIcon? suffixIcon;
  final TextEditingController? controller;
  final Function(dynamic )? onChanged;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged:onChanged,
      obscureText: obscure,
      validator: (value) {
        if (activeValidation) {
          if (value!.isEmpty) return errorMessage ?? '';
          if (value.length < minLength) return lengthErrorMessage ?? '';
        }

        return null;
      },
      keyboardType: textInputType ?? TextInputType.text,
      decoration: InputDecoration(

        suffixIconConstraints: BoxConstraints(
            minHeight: prefixIcon!=null?CustomSizes.iconSize:0,
            minWidth: suffixIcon!=null?CustomSizes.iconSize:0,
        ),
        prefixIconConstraints: BoxConstraints(
          minHeight: prefixIcon!=null?24:0,
          minWidth: suffixIcon!=null?24:0,
        ),
        prefixIcon: Padding(
          padding:  EdgeInsets.all(CustomSizes.padding5),
          child: prefixIcon ?? Container(color:Colors.red,width: 0,height: 0,),
        ),
        suffixIcon: suffixIcon ?? Container(color:Colors.green,width: 0,height: 0,),
        labelText: labelText,
        isDense: true, // and add this line

        contentPadding: EdgeInsets.symmetric(
            vertical: verticalPadding ?? CustomSizes.padding1,
            horizontal: horizontalPadding ?? CustomSizes.padding1),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
              color: CustomColors.red, width: 0.2, style: BorderStyle.solid),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
              color: CustomColors.red, width: 0.2, style: BorderStyle.solid),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: const BorderSide(
                color: CustomColors.black,
                width: 0.2,
                style: BorderStyle.solid)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(
              color: CustomColors.black, width: 0.2, style: BorderStyle.solid),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: fontSize ?? CustomSizes.header4,
            color: textColor ?? CustomColors.black.withOpacity(0.5)),
        labelStyle: TextStyle(
            height: 1.5,
            fontWeight: FontWeight.w800,
            fontSize: fontSize ?? CustomSizes.header4,
            color: textColor ?? CustomColors.black.withOpacity(0.5)),
      ),
    );
  }
}
