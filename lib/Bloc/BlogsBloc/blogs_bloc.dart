import 'package:bloc/bloc.dart';
import 'package:blog_app/Model/BlogsModel/blogs_model.dart';
import 'package:blog_app/Repository/BlogsRepo/blogs_repo.dart';
import 'package:equatable/equatable.dart';

part 'blogs_state.dart';
part 'blogs_event.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  final BlogsRepo blogsRepo;
  List<BlogsData> allBlogs = [];
  List<BlogsData> filterBlogs = [];

  BlogsBloc({required this.blogsRepo}) : super(BlogInitailState()) {
    on<BlogLoadedEvent>(_getAllBlogs);
    on<BlogFilterEvent>(_getFilterBlogs);
  }

  void _getAllBlogs(BlogLoadedEvent event, Emitter<BlogsState> emit) async {
    try {
      emit(BlogLoadingState());
      var data = await blogsRepo.getAllBlogs();
      if (data.status == true) {
        allBlogs = data.data ?? [];
        emit(BlogSuccessState(data: allBlogs));
      }
    } catch (e) {
      emit(BlogErrorState(errorMsg: e.toString()));
    }
  }

  void _getFilterBlogs(BlogFilterEvent event, Emitter<BlogsState> emit) {
    if (event.qurey.isEmpty) {
      filterBlogs = allBlogs;
    } else {
      filterBlogs = allBlogs
          .where(
              (e) => e.title!.toLowerCase().contains(event.qurey.toLowerCase()))
          .toList();
    }
    emit(BlogSuccessState(data: filterBlogs));
  }
}
