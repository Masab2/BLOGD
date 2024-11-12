part of 'blog_details_bloc.dart';
abstract class BlogDetailsBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BlogDetailsBlocInitial extends BlogDetailsBlocState {}

class BlogDetailsBlocLoading extends BlogDetailsBlocState {}

class BlogDetailsBlocCompleted extends BlogDetailsBlocState {
  final CreateBlogModel createBlogModel;

  BlogDetailsBlocCompleted({required this.createBlogModel});
  @override
  List<Object?> get props => [createBlogModel];
}

class BlogDetailsBlocError extends BlogDetailsBlocState {
  final String error;
  BlogDetailsBlocError(this.error);
  @override
  List<Object?> get props => [error];
}
