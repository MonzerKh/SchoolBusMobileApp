import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:schoolbus_app/screens/custom_widgets/texts.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
        required this.text,
        this.backGroundColor = CustomColors.white,
        this.textColor = CustomColors.primary,required this.function,
      this.fontWeight = FontWeight.normal, this.height, this.width, this.fontSize, this.borderSize})
      : super(key: key);

  final String text;

  final Color backGroundColor, textColor;
  final VoidCallback function ;
  final FontWeight fontWeight;
  final double? height,width;
  final double? fontSize;
  final double? borderSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: CustomSizes.padding8),
      child: TextButton(
        child: Padding(
          padding:  EdgeInsets.all(CustomSizes.padding6),
          child: CustomText(
            text: text,
            color: textColor,
            fontSize: fontSize??CustomSizes.header7,
            fontWeight:fontWeight,

          ),
        ),

        style:ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),

            elevation:MaterialStateProperty.all(1) ,
            backgroundColor: MaterialStateProperty.all(backGroundColor),
            side: MaterialStateProperty.all(
                BorderSide(width: borderSize??0.1, color: CustomColors.primary)),
            shadowColor:MaterialStateProperty.all(CustomColors.black)
        ),

        onPressed: function
      ),
    );
  }
}

class myButton extends StatelessWidget {
  const myButton({Key? key,required this.text, this.textColor, this.fontSize, this.fontWeight, this.width, this.height, this.backgroundColor}) : super(key: key);

  final String text;
  final Color? textColor,backgroundColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? width,height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width:width??CustomSizes.height6,
        height:height??CustomSizes.height6,
        decoration:  BoxDecoration(
            border: Border.all(color: CustomColors.primary),
          borderRadius:  const BorderRadius.all(
             Radius.circular(10),
             ),
          color: backgroundColor??CustomColors.primary,
        ),
      child: Center(
        child: CustomText(
          text: 'test teest test tese  test test test ',
          color: textColor??CustomColors.black,
          fontSize: fontSize??CustomSizes.header7,
          fontWeight:fontWeight??FontWeight.normal,

        ),
      ),
    );
  }
}



