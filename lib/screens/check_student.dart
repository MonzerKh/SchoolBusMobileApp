import 'package:flutter/material.dart';
import 'package:schoolbus_app/screens/student_page.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';

import 'custom_widgets/buttons.dart';
import 'custom_widgets/texts.dart';

class CheckStudent extends StatelessWidget {
  const CheckStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(),
      body:ListView(
        children: [
          StudentInfoWidget() ,
          StudentInfoWidget() ,
          StudentInfoWidget() ,
          StudentInfoWidget() ,
          StudentInfoWidget() ,
          StudentInfoWidget() ,
        ],
      )
    );
  }
}

class StudentInfoWidget extends StatefulWidget {
  const StudentInfoWidget({Key? key}) : super(key: key);

  @override
  State<StudentInfoWidget> createState() => _StudentInfoWidgetState();
}

class _StudentInfoWidgetState extends State<StudentInfoWidget> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Card(
margin: EdgeInsets.symmetric(horizontal: 0,vertical: CustomSizes.padding8),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const StudentPage()),
          );
        },
        child: Row(
          children: [
            ClipOval(
              child: Image.asset('lib/assets/images/kid.png',
                fit: BoxFit.cover,

                height: 75,
                width: 50.0,) ,

            ),
            Expanded(
              child: CustomText(
                text: 'Ali Mohammed ',
                color: CustomColors.black,
                fontSize: CustomSizes.header4,
                fontWeight: FontWeight.bold,
                maxLines: 1,),
            ),
            Expanded(
              child: CheckboxListTile(
                title: const Text("title text"),
                value: checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    checkedValue = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
              ),
            )
          ],
        ),
      ),
    );
  }
}
