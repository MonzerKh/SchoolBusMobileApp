import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';

import 'custom_widgets/texts.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children:[
          Image.asset('lib/assets/images/kid.png',
            fit: BoxFit.cover,

            height: 300,
            width: 50.0,),
          SizedBox(height: CustomSizes.verticalSpace*2),
          CustomText(
            text: 'Ali Mohammed ',
            color: CustomColors.black,
            fontSize: CustomSizes.header3,
            fontWeight: FontWeight.bold,
            maxLines: 1,),
          /// here I will add
          /// real address
          /// google maps
          /// icons for send message ,whatsapp account, call
         SizedBox(height: CustomSizes.verticalSpace*2),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Address ',
                      color: CustomColors.black,
                      fontSize: CustomSizes.header4,
                      maxLines: 1,),
                    Expanded(
                      child: CustomText(
                        text: 'Şirinevler Mh. Kazım Karabekir 1.sok no :2 // yurt 34188, Bahçelievler - İstanbul. ',
                        color: CustomColors.black,
                        fontSize: CustomSizes.header4,
                        maxLines: 2,),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: CustomSizes.verticalSpace*2),

          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FaIcon(FontAwesomeIcons.whatsapp,color: CustomColors.green,size:CustomSizes.iconSize*2),
                FaIcon(FontAwesomeIcons.phone,size:CustomSizes.iconSize*2),
                FaIcon(FontAwesomeIcons.sms,color: CustomColors.yellow,size:CustomSizes.iconSize*2),
              ],
            ),
          )
        ]
      )
    );
  }
}
