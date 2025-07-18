import 'package:flutter/material.dart';
import 'package:startup/utils/global_colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            'Or sign in with',
          style: TextStyle(
            color: GlobalColors.textColor,
            fontWeight: FontWeight.w600
          ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          child: Row(
            children: [
            // Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 20
                      ),
                    ]
                  ),
                  child: Image.asset('assets/images/google.jpeg', height: 30),
                ),
              ),
              SizedBox(width: 15),
              ///Facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10
                      ),
                    ]
                  ),
                  child: Image.asset('assets/images/facebook.jpeg', height: 30),
                ),
              ),
              SizedBox(width: 15),
              //Twitter
               Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10
                      ),
                    ]
                  ),
                  child: Image.asset('assets/images/twitter.png', height: 30),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}