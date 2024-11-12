import 'package:bloc/bloc.dart';
import 'package:blog_app/Model/CategoryModel/category_model.dart';
import 'package:blog_app/Repository/CategoryRepo/category_repo.dart';
import 'package:equatable/equatable.dart';
part './category_bloc_events.dart';
part './category_bloc_state.dart';

class CategoryBloc extends Bloc<CategoryBlocEvents, CategoryBlocState> {
  final CategoryRepo categoryRepo;
  List<CategoryList> categoryList = [];
  List<CategoryList> filteredCategoryList = [];
  CategoryBloc({required this.categoryRepo}) : super(CategoryInitialState()) {
    on<CategoryLoadedEvent>(_onCategoryLoaded);
    on<CategoryFilterEvent>(_onCategoryFilter);
  }

  void _onCategoryLoaded(
      CategoryLoadedEvent event, Emitter<CategoryBlocState> emit) async {
    try {
      emit(CategoryLoadingState());
      var data = await categoryRepo.getCategory();
      if (data.status == "Success") {
        categoryList = data.data ?? [];
        emit(CategoryCompletedState(categoryList: data.data ?? []));
      }
    } catch (e) {
      emit(CategoryErrorState(errorMsg: e.toString()));
    }
  }

  void _onCategoryFilter(
      CategoryFilterEvent event, Emitter<CategoryBlocState> emit) {
    if (event.qurey.isEmpty) {
      filteredCategoryList = categoryList;
    } else {
      filteredCategoryList = categoryList
          .where((element) =>
              element.name!.toLowerCase().contains(event.qurey.toLowerCase()))
          .toList();
      emit(CategoryCompletedState(categoryList: filteredCategoryList));
    }
  }
}
