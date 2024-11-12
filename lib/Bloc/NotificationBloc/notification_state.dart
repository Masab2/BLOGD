part of 'notification_bloc.dart';

abstract class NotificationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NotificationInitialState extends NotificationState {}

class NotificationLoadingState extends NotificationState {}

class NotificationCompletedState extends NotificationState {
  final List<NotificationList> notifs;

  NotificationCompletedState({required this.notifs});
  @override
  List<Object?> get props => [notifs];
}

class NotificationErrorState extends NotificationState {
  final String errorMsg;

  NotificationErrorState({required this.errorMsg});
  @override
  List<Object?> get props => [errorMsg];
}
