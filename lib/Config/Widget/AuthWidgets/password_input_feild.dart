import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_bloc.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_event.dart';
import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_state.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/customized_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

class PasswordInputFeild extends StatelessWidget {
  final TextEditingController passwordController;
  const PasswordInputFeild({super.key, required this.passwordController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return CustomizedFeilds(
          controller: passwordController,
          hintText: "*********",
          prefixIcon: IconlyLight.lock,
          onChanged: (value) {
            context
                .read<LoginBloc>()
                .add(LoginPasswordChanged(password: value));
            return null;
          },
        );
      },
    );
  }
}
