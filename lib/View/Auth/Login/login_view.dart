import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:blog_app/Config/Widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final ValueNotifier<bool> _obscurepass = ValueNotifier(true);

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    _obscurepass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BLOGD",
          style: GoogleFonts.lora(
            fontSize: context.mh * 0.028,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          0.08.ph(context),
          const LoginHeadingWidget(),
          0.06.ph(context),
          EmailInputFeild(
            emailController: emailcontroller,
          ),
          0.02.ph(context),
          PasswordInputFeild(
            passwordController: passwordcontroller,
          ),
          0.03.ph(context),
          LoginButtonWidget(
            emailController: emailcontroller,
            passwordController: passwordcontroller,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.mw * 0.21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: Text('Dont have an account?'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.montserrat(
                        fontSize: context.mh * 0.016,
                        color: AppColors.textColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
