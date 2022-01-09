import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:schoolbus_app/_models/account.dart';
import 'package:schoolbus_app/_providers/MainProvider.dart';
import 'package:schoolbus_app/_services/SharedPrefernce.dart';
import 'package:schoolbus_app/screens/custom_widgets/buttons.dart';
import 'package:schoolbus_app/screens/custom_widgets/input_field.dart';
import 'package:schoolbus_app/screens/authentication/startup.dart';
import 'package:schoolbus_app/utilities/colors.dart';
import 'package:schoolbus_app/utilities/sizes.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController UserNameController = new TextEditingController();
  final TextEditingController PasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _mainProvider = Provider.of<MainProvider>(context);

    SizeConfig().init(context);

    /* return Scaffold(
        appBar: AppBar(
            toolbarHeight: CustomSizes.height7,
            title: Text(
              "Login",
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.white, fontSize: CustomSizes.header4),
            ),
            actions: [
              TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => startup(),
                    ),
                  );
                },
                label: Text(
                  "Setting",
                  style: TextStyle(
                      color: Colors.white, fontSize: CustomSizes.header4),
                ),
                icon: Icon(Icons.settings,
                    color: Colors.white, size: CustomSizes.header3),
              )
            ]),
        body: ListView(children: [
          Container(
            width: CustomSizes.height1,
            height: CustomSizes.height1,
            child: Image.asset('lib/assets/images/logo.jpg'),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: CustomSizes.padding2),
              child: Column(children: [
                InputField(
                  hintText: 'user name',
                  labelText: 'user name',
                  textInputType: TextInputType.text,
                  fontSize: CustomSizes.header3,
                  controller: UserNameController,
                  prefixIcon: const FaIcon(
                    FontAwesomeIcons.userCircle,
                    color: CustomColors.blue,
                    size: 35,
                  ),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 2),
                InputField(
                  hintText: 'Password',
                  labelText: 'password',
                  textInputType: TextInputType.phone,
                  fontSize: CustomSizes.header3,
                  controller: PasswordController,
                  obscure: true,
                  prefixIcon: const FaIcon(
                    FontAwesomeIcons.lock,
                    color: CustomColors.blue,
                    size: 35,
                  ),
                ),
                SizedBox(height: CustomSizes.verticalSpace * 3),
                CustomButton(
                    text: 'Login',
                    backGroundColor: CustomColors.primary,
                    textColor: CustomColors.white,
                    function: () async {
                      if (_formKey.currentState!.validate()) {
                        _mainProvider.CurrentUser = await Account.login(
                            UserNameController.text, UserNameController.text);

                        await SharedPref.SavePrefernce(UserNameController.text, UserNameController.text);
                        _mainProvider.reloadProvider();
                      }
                    },
                    fontWeight: FontWeight.bold,
                    fontSize: CustomSizes.header3),
              ]),
            ),
          )
        ]));
  }*/

    return Scaffold(
      body: Container(
        child: TextField(
            cursorColor: ArgonColors.muted,
            onTap: onTap,
            onChanged: onChanged,
            controller: controller,
            keyboardType: Ktype,
            autofocus: autofocus,
            minLines: this.MinLines,
            maxLines: this.MaxLines,
            style:
            TextStyle(height: 0.85, fontSize: 16.0, color: ArgonColors.initial),
            textAlignVertical: TextAlignVertical(y: 0.6),
            decoration: InputDecoration(
                filled: true,
                fillColor: ArgonColors.white,
                hintStyle: TextStyle(
                  color: ArgonColors.muted,
                ),
                suffixIcon: suffixIcon,
                prefixIcon: prefixIcon,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(
                        color: borderColor, width: 1.0, style: BorderStyle.solid)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    borderSide: BorderSide(
                        color: borderColor, width: 1.0, style: BorderStyle.solid)),
                hintText: placeholder)),
      ),
    );
  }
