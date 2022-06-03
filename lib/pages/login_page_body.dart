import 'package:flutter/material.dart';
import 'package:new_app/constants/color.dart';
import 'package:new_app/constants/text.dart';
import 'package:new_app/constants/custom_text.dart';
import 'package:new_app/pages/second_page.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            LoginPageCustomText(
              padding: EdgeInsets.only(top: 20.0, left: 25),
              text: loginText,
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: whiteColor),
              maxFontSize: 33,
              minFontSize: 30,
            ),
            LoginPageCustomText(
              padding: EdgeInsets.only(bottom: 8, top: 30.0, left: 25),
              text: emailText,
              textStyle:
                  TextStyle(fontWeight: FontWeight.w400, color: whiteColor),
              maxFontSize: 20,
              minFontSize: 18,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, left: 25),
                  hintText: yourEmailText,
                  hintStyle: TextStyle(color: whiteColor)),
              keyboardType: TextInputType.text,
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: whiteColor),
            ),
            LoginPageCustomText(
              padding: EdgeInsets.only(top: 8, left: 25),
              text: passwordText,
              textStyle:
                  TextStyle(fontWeight: FontWeight.w400, color: whiteColor),
              maxFontSize: 20,
              minFontSize: 18,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, left: 25),
                  hintText: minEighthCharacterText,
                  hintStyle: TextStyle(color: whiteColor)),
              keyboardType: TextInputType.text,
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: whiteColor),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: ElevatedButton(
                child:const Text('Login'),
                onPressed: () {
                  _navigateToNextScreen(context);
                },
                style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(loginPageButtonColor),),
              ),
            ),
          ],
        )
      ],
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SecondRoute()));
  }
}


