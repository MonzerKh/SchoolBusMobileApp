import 'package:flutter/cupertino.dart';

class CustomSizes{

  //TEXT
  static  double header1 = getAdaptiveTextSize(30);
  static  double header2 = getAdaptiveTextSize(25);
  static  double header3 = getAdaptiveTextSize(20);
  static  double header4 = getAdaptiveTextSize(15);
  static  double header5 = getAdaptiveTextSize(12);
  static  double header6 = getAdaptiveTextSize(10);
  static  double header7 = getAdaptiveTextSize(9);
  static  double header8 = getAdaptiveTextSize(5);

  //HEIGHT

  static  double height1 = getAdaptiveTextSize(300);
  static  double height2 = getAdaptiveTextSize(250);
  static  double height3 = getAdaptiveTextSize(200);
  static  double height4 = getAdaptiveTextSize(150);
  static  double height5 = getAdaptiveTextSize(100);
  static  double height6 = getAdaptiveTextSize(75);
  static  double height7 = getAdaptiveTextSize(50);
  static  double height8 = getAdaptiveTextSize(25);

  //ICON SIZE
  static double iconSize    = getAdaptiveTextSize(20);
  static double iconSizeMedium    = getAdaptiveTextSize(30);
  static double iconSizeBig    = getAdaptiveTextSize(40);

  //PADDINGS
  static double padding1  = getAdaptiveTextSize(20);
  static double padding2  = getAdaptiveTextSize(15);
  static double padding3  = getAdaptiveTextSize(15);

  static double padding4  = getAdaptiveTextSize(14);
  static double padding5  = getAdaptiveTextSize(10);
  static double padding6  = getAdaptiveTextSize(8);
  static double padding7  = getAdaptiveTextSize(6);
  static double padding8  = getAdaptiveTextSize(4);

  // SPACES

  static double verticalSpace    = getAdaptiveTextSize(8);
  static double horizontalSpace  = getAdaptiveTextSize(8);

}


class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth ;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}


double getScreenWidth() {
  double screenWidth = SizeConfig.screenWidth!;
  return screenWidth;
}
double getScreenHeight() {
  double screenHeight = SizeConfig.screenHeight!;

  return screenHeight;
}

double getWidgetHeight(double num)
{
  double screenHeight = SizeConfig.screenHeight!;
  return (screenHeight/num);
}


double getAdaptiveTextSize(double value) {
  // 720 is medium screen height


  print( 'the screen height is ${ getScreenHeight()}');
  return (value / 720) * getScreenHeight();
}