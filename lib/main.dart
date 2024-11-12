import 'package:blog_app/Bloc/AuthBloc/LoginBloc/login_bloc.dart';
import 'package:blog_app/Bloc/BlogDetailsBloc/blog_details_bloc.dart';
import 'package:blog_app/Bloc/BlogsBloc/blogs_bloc.dart';
import 'package:blog_app/Bloc/CategoryBloc/category_bloc.dart';
import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_bloc.dart';
import 'package:blog_app/Bloc/NotificationBloc/notification_bloc.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Routes/routes.dart';
import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:blog_app/Service/ServiceLocator/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void main() {
  ServiceLocator.initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(loginRepo: getIt()),
        ),
        BlocProvider(
          create: (context) => BlogsBloc(blogsRepo: getIt()),
        ),
        BlocProvider(
          create: (context) => CategoryBloc(categoryRepo: getIt()),
        ),
        BlocProvider(
          create: (context) => CreateBlogBloc(repo: getIt()),
        ),
        BlocProvider(
          create: (context) => BlogDetailsBloc(repo: getIt()),
        ),
        BlocProvider(
          create: (context) => NotificationBloc(repo: getIt()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BLOGD',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.blackColor),
          useMaterial3: true,
        ),
        initialRoute: RoutesNames.splashScreen,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
