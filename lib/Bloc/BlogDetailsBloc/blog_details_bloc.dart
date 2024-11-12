import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:blog_app/Model/CreateBlogModel/create_blog_model.dart';
import 'package:blog_app/Repository/BlogDetailsRepo/blog_details_repo.dart';
import 'package:equatable/equatable.dart';
part 'blog_details_bloc_event.dart';
part 'blog_details_bloc_state.dart';

class BlogDetailsBloc extends Bloc<BlogDetailsBlocEvent, BlogDetailsBlocState> {
  final BlogDetailsRepo repo;
  BlogDetailsBloc({required this.repo}) : super(BlogDetailsBlocInitial()) {
    on<GetBlogDetailsEvent>(_getblogById);
  }

  void _getblogById(
      GetBlogDetailsEvent event, Emitter<BlogDetailsBlocState> emit) async {
    try {
      emit(BlogDetailsBlocLoading());
      final data = await repo.getBlogsDetailsApi(event.id);
      emit(BlogDetailsBlocCompleted(createBlogModel: data));
    } catch (e) {
      log(e.toString());
      emit(BlogDetailsBlocError(e.toString()));
    }
  }
}
