part of 'blogs_bloc.dart';

abstract class BlogsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Blog Loaded Event
class BlogLoadedEvent extends BlogsEvent {}

// Blogs Filter Event
class BlogFilterEvent extends BlogsEvent {
  final String qurey;

  BlogFilterEvent({required this.qurey});

  @override
  List<Object?> get props => [qurey];
}
