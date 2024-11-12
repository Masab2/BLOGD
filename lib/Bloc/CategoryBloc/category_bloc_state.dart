part of 'category_bloc.dart';

abstract class CategoryBlocState extends Equatable {
  @override
  List<Object?> get props => [];
}

// Initail State
class CategoryInitialState extends CategoryBlocState {}

// Loading State
class CategoryLoadingState extends CategoryBlocState {}

// Completed State
class CategoryCompletedState extends CategoryBlocState {
  final List<CategoryList> categoryList;

  CategoryCompletedState({required this.categoryList});
  @override
  List<Object?> get props => [categoryList];
}

// Error State
class CategoryErrorState extends CategoryBlocState {
  final String errorMsg;

  CategoryErrorState({required this.errorMsg});
  @override
  List<Object?> get props => [errorMsg];
}
