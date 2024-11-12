import 'package:blog_app/Config/Routes/routes_names.dart';
import 'package:blog_app/View/view.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutesNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case RoutesNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case RoutesNames.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case RoutesNames.createBlogScreen:
        return MaterialPageRoute(
          builder: (_) => const CreateBlogView(),
        );
      case RoutesNames.categoryScreen:
        return MaterialPageRoute(
          builder: (_) => const CategoryView(),
        );
      case RoutesNames.notificationScreen:
        return MaterialPageRoute(
          builder: (_) => NotificationView(
           
          ),
        );
      case RoutesNames.blogdetailsScreen:
        return MaterialPageRoute(
          builder: (_) => BlogDetails(
            blogId: args as String,
          ),
        );
      case RoutesNames.aiAssistanceScreen:
        return MaterialPageRoute(
          builder: (_) => const AiAssistanceView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
