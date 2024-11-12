part of 'blogs_bloc.dart';

abstract class BlogsState extends Equatable {
  const BlogsState();
  @override
  List<Object> get props => [];
}

// Initial State
class BlogInitailState extends BlogsState {}

// Loading State
class BlogLoadingState extends BlogsState {}

// Success State
class BlogSuccessState extends BlogsState {
  final List <BlogsData> data ;

  const BlogSuccessState({required this.data});
   @override
  List<Object> get props => [data];
}

// Error State
class BlogErrorState extends BlogsState {
  final String errorMsg;

  const BlogErrorState({required this.errorMsg});


  @override
  List<Object> get props => [errorMsg];
}
