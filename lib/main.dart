import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:schoolbus_app/_models/account.dart';
import 'package:schoolbus_app/_providers/MainProvider.dart';
import 'package:schoolbus_app/_services/SharedPrefernce.dart';
import 'package:schoolbus_app/screens/app/home.dart';
import 'package:schoolbus_app/screens/authentication/login/login.dart';
import 'package:schoolbus_app/screens/authentication/startup.dart';

void main() {
  runApp(SchoolBusMob());
}

class SchoolBusMob extends StatefulWidget {
  @override
  _SchoolBusMobState createState() => _SchoolBusMobState();
}

class _SchoolBusMobState extends State<SchoolBusMob> {
  MainProvider _mainProvider = new MainProvider();
  bool IsLoading = true;

  Future<bool> LoadingSharedPreference(MainProvider MainProvider) async {
    bool value = await MainProvider.loadSharedPrefs();
    if (value) {
      _mainProvider.CurrentUser =
      await Account.login(SharedPref.UserName!, SharedPref.UserPassword!);
    }
    setState(() {
      IsLoading = false;
    });
    return value;
  }

  Widget Wrapper(bool? IsLogin){
    if(IsLogin ==true && _mainProvider.CurrentUser!.token!.isNotEmpty)
      return home();
    else
      return Login();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: LoadingSharedPreference(_mainProvider),
        builder: (context, AsyncSnapshot<bool> snapshot) {
          return MultiProvider(
            providers: [ChangeNotifierProvider.value(value: _mainProvider)],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: <String, WidgetBuilder>{
                '/login': (BuildContext context) => new Login(),
                '/home': (BuildContext context) => new home(),
                '/startup': (BuildContext context) => new startup(),
              },
              home: Scaffold(
                  body: (!IsLoading && snapshot.hasData)
                      ? Wrapper(snapshot.data!)
                      : Center(child: CircularProgressIndicator())),
            ),
          );
        });
  }
}
