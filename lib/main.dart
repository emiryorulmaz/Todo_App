import 'package:flutter/material.dart';
import 'package:new_app/constants/color.dart';
import 'package:new_app/pages/login_page_body.dart';
import 'package:new_app/provider/todos.dart';
import 'package:new_app/widgets/app_bar.dart';
import 'package:provider/provider.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(context) => TodosProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: pageBackgroundColor,
            appBar: AppBarWidget(appBarActions: const []),
            body: const LoginPageBody(),
          ),
        ),
      ),
    );
  }
}
