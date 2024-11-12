import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_bloc.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_event.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_state.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/RoundButton/round_btn.dart';
import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:blog_app/Config/Utils/utils.dart';
import 'package:blog_app/Data/Response/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonWidget extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  const LoginButtonWidget(
      {super.key,
      required this.emailController,
      required this.passwordController});

  @override
  Widget build(BuildContext context) {
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == Status.error) {
          Utils.displayFlushBar(
              context, "Failed", "Login Failed. Please try again");
        }

        if (state.status == Status.completed) {
          Utils.displayFlushBar(context, "Success", "Login Success.");
          Navigator.pushNamedAndRemoveUntil(
            context,
            RoutesNames.homeScreen,
            (route) => false,
            arguments: {
              "email": state.email,
              "gender": state.gender
            }
          );
        }
      },
      child: RoundBtn(
        title: "Login",
        onPress: () {
          if (emailController.text.isEmpty && passwordController.text.isEmpty) {
            Utils.displayFlushBar(
                context, "Error", "Please enter email and password");
            return;
          } else if (!emailRegExp.hasMatch(emailController.text)) {
            Utils.displayFlushBar(context, "Error", "Please enter valid email");
            return;
          } else if (passwordController.text.length < 6) {
            Utils.displayFlushBar(
                context, "Error", "Password must be at least 6 characters");
          } else {
            context.read<LoginBloc>().add(LoginButtonClicked());
            return;
          }
        },
        color: AppColors.blackColor,
        textcolor: AppColors.whiteColor,
      ),
    );
  }
}
