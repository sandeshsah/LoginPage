import 'package:flutter/material.dart';
import 'package:startup/utils/global_colors.dart';

class ButtonForm extends StatelessWidget {
  const ButtonForm({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      print('Login');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
          color: GlobalColors.mainColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            )
          ]
        ),
        child: Text(
          'Sign in',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
    );
  }
}