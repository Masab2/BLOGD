import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';
import 'package:equatable/equatable.dart';

class CreateBlogState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateBlogInitial extends CreateBlogState {}

class CreateBlogLoadingState extends CreateBlogState {}

class CreateBlogCompletedState extends CreateBlogState {
  final CreateBlogModel createBlogModel;
  final bool hasNewNotification;

  CreateBlogCompletedState({required this.createBlogModel, required this.hasNewNotification});
  @override
  List<Object?> get props => [createBlogModel];
}

class CreateBlogErrorState extends CreateBlogState {
  final String errorMsg;

  CreateBlogErrorState({required this.errorMsg});

  @override
  List<Object?> get props => [errorMsg];
}
