import 'package:blog_app/Repository/AuthRepo/LoginRepo/login_http_repo.dart';
import 'package:blog_app/Repository/AuthRepo/LoginRepo/login_repo.dart';
import 'package:blog_app/Repository/BlogDetailsRepo/blog_details_http_repo.dart';
import 'package:blog_app/Repository/BlogDetailsRepo/blog_details_repo.dart';
import 'package:blog_app/Repository/BlogsRepo/blogs_http_repo.dart';
import 'package:blog_app/Repository/BlogsRepo/blogs_repo.dart';
import 'package:blog_app/Repository/CategoryRepo/category_http_repo.dart';
import 'package:blog_app/Repository/CategoryRepo/category_repo.dart';
import 'package:blog_app/Repository/ChatAiRepo/chat_ai_http_repo.dart';
import 'package:blog_app/Repository/ChatAiRepo/chat_ai_repo.dart';
import 'package:blog_app/Repository/CreateBlogRepo/create_blog_http_repo.dart';
import 'package:blog_app/Repository/CreateBlogRepo/create_blog_repo.dart';
import 'package:blog_app/Repository/NotificationRepo/notification_http_repo.dart';
import 'package:blog_app/Repository/NotificationRepo/notification_repo.dart';
import 'package:blog_app/main.dart';

class ServiceLocator {
  static void initService() {
    getIt.registerLazySingleton<LoginRepo>(() => LoginHttpRepo());
    getIt.registerLazySingleton<BlogsRepo>(() => BlogsHttpRepo());
    getIt.registerLazySingleton<CategoryRepo>(() => CategoryHttpRepo());
    getIt.registerLazySingleton<CreateBlogRepo>(() => CreateBlogHttpRepo());
    getIt.registerLazySingleton<BlogDetailsRepo>(() => BlogDetailsHttpRepo());
    getIt.registerLazySingleton<ChatAIRepo>(() => ChatAIHttpRepo());
    getIt.registerLazySingleton<NotificationRepo>(() => NotificationHttpRepo());
  }
}
