part of "blog_details_bloc.dart";

class BlogDetailsBlocEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetBlogDetailsEvent extends BlogDetailsBlocEvent {
  final String id;
  GetBlogDetailsEvent({required this.id});

  @override
  List<Object?> get props => [id];
}
