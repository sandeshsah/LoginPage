import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:startup/frontview/widget/bottom_form.dart';
import 'package:startup/frontview/widget/social_media.dart';
import 'package:startup/frontview/widget/text_form.dart';
import 'package:startup/utils/global_colors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Logo',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(height: 100),
                Text('Login your account',
                style: TextStyle(
                color: GlobalColors.textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 20),
                  ///Email Input
                  TextForms(
                    controller: emailController,
                    text: 'Email', obscure: false,
                    textInputType: TextInputType.emailAddress,
                    ),
                  ///Password Input
                    SizedBox(height: 10),
                  TextForms(
                    controller: passwordController,
                    text: 'Password', obscure: true,
                    textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 10),
                    Padding(padding: EdgeInsets.all(12)),
                    ButtonForm(),
                    SizedBox(height: 20),
                    SocialLogin(),
                ],
            ),
            ),
            ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white10,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?"),
            InkWell(
              child: Text("Sign Up",
              style: TextStyle(
                color: Colors.black,
              ),),

            )
          ],
        ),
      ),
    );
  }
}