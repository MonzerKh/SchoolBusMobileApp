import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schoolbus_app/screens/custom_widgets/buttons.dart';
import 'package:schoolbus_app/screens/custom_widgets/input_field.dart';
import 'package:schoolbus_app/screens/custom_widgets/texts.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        appBar: AppBar(),
        body: ListView( children: [
          Image.asset('lib/assets/images/logo.jpg'),
          Form(
              key: _formKey,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: CustomSizes.padding5),

                  child: Column(children: [
                    InputField(
                      hintText: '05372727',
                      labelText: 'phone',
                      textInputType: TextInputType.phone,
                      fontSize: CustomSizes.header5,
                      prefixIcon: const FaIcon(FontAwesomeIcons.phone),
                    ),
                    SizedBox(height: CustomSizes.verticalSpace*2),
                    InputField(
                      hintText: 'Password',
                      labelText: 'password',
                      textInputType: TextInputType.phone,
                      fontSize: CustomSizes.header5,
                      obscure: true,
                      prefixIcon: const FaIcon(FontAwesomeIcons.lock),

                    ),
                    SizedBox(height: CustomSizes.verticalSpace*3),
                    CustomButton(
                        text: 'Login',
                        backGroundColor: CustomColors.primary,
                        textColor: CustomColors.white,
                        function: () {},
                        fontWeight: FontWeight.bold,
                        fontSize: CustomSizes.header4),
                  ]),
                ),
              )
        ]));
  }
}
