import 'dart:developer';

import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_bloc.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_event.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_state.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/customized_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class EmailInputFeild extends StatelessWidget {
  final TextEditingController emailController;
  const EmailInputFeild({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: emailController,
          hintText: "abc@gmail.com",
          prefixIcon: IconlyLight.message,
          onChanged: (value) {
            log(value);
            context.read<LoginBloc>().add(
                  LoginEmailChanged(email: value),
                );
            return null;
          },
        );
      },
    );
  }
}
