import 'package:equatable/equatable.dart';

class CreateBlogEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class CreateBlogButtonPressed extends CreateBlogEvent {
  final String title;
  final String description;
  final String author;
  final String category;
  final String estimatedTime;
  final String date;

  CreateBlogButtonPressed({
    required this.title,
    required this.description,
    required this.author,
    required this.category,
    required this.estimatedTime,
    required this.date,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        author,
        category,
        estimatedTime,
        date,
      ];
}

// Notification Cleared Event
class NotificationClearedEvent extends CreateBlogEvent {}
