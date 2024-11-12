import 'dart:convert';
import 'dart:developer';

import 'package:blog_app/Bloc/CreateBlogBloc/create_blog_event.dart';
import 'package:blog_app/Model/UserModel/user_model.dart';
import 'package:blog_app/Repository/CreateBlogRepo/create_blog_repo.dart';
import 'package:blog_app/Service/LocalStorage/local_storage.dart';
import 'package:blog_app/Service/SessionManager/session_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'create_blog_state.dart';

class CreateBlogBloc extends Bloc<CreateBlogEvent, CreateBlogState> {
  final CreateBlogRepo repo;
  final LocalStorage storage = LocalStorage();
  CreateBlogBloc({required this.repo}) : super(CreateBlogInitial()) {
    on<CreateBlogButtonPressed>(_oncreateBlog);
    on<NotificationClearedEvent>(_onNotificationCleared);
  }

  void _oncreateBlog(
      CreateBlogButtonPressed event, Emitter<CreateBlogState> emit) async {
    try {
      var id = await storage.readValue("token");
      if (id == null) {
        throw Exception("Token not found or is null.");
      }

      UserModel? userIddata;
      try {
        userIddata =
            SessionController().userModel = UserModel.fromJson(jsonDecode(id));
        log(userIddata.data?.id ?? "User ID not found.");
      } catch (e) {
        emit(CreateBlogErrorState(errorMsg: "Invalid user token format."));
        return;
      }

      String userId = userIddata.data?.id ?? "";
      Map<String, dynamic> data = {
        "title": event.title,
        "description": event.description,
        "author": event.author,
        "userId": userId,
        "category": event.category,
        "estimatedTime": event.estimatedTime,
      };
      log(data.toString());

      final response = await repo.createBlogApi(data);
      emit(
        CreateBlogCompletedState(
            createBlogModel: response, hasNewNotification: true),
      );
    } catch (e, stackTrace) {
      log('Error in creating blog: $e', error: e, stackTrace: stackTrace);
      emit(CreateBlogErrorState(errorMsg: e.toString()));
    }
  }

  // Handle notification clearing
  void _onNotificationCleared(
      NotificationClearedEvent event, Emitter<CreateBlogState> emit) {
    final currentState = state;
    log("Current state: $currentState");

    if (currentState is CreateBlogCompletedState) {
      log("Clearing notification, setting hasNewNotification to false.");

      // Emit a new state with hasNewNotification set to false
      emit(CreateBlogCompletedState(
        createBlogModel: currentState.createBlogModel,
        hasNewNotification: false,
      ));
    } else {
      log("No notification to clear, current state: $currentState");
    }
  }
}
