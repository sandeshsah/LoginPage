import 'dart:async';

import 'package:flutter/material.dart';
import 'package:startup/frontview/login_Page.dart';
import 'package:startup/utils/global_colors.dart';
import 'package:get/get.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {Get.to(LoginPage());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Text('Logo',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}