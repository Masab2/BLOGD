part of 'category_bloc.dart';

class CategoryBlocEvents extends Equatable {
  @override
  List<Object?> get props => [];
}

// Loaded Category Events
class CategoryLoadedEvent extends CategoryBlocEvents {}

// Blogs Filter Event
class CategoryFilterEvent extends CategoryBlocEvents {
  final String qurey;

  CategoryFilterEvent({required this.qurey});

  @override
  List<Object?> get props => [qurey];
}