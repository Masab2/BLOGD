import 'package:bloc/bloc.dart';
import 'package:blog_app/Model/NotificationModel/notification_model.dart';
import 'package:blog_app/Repository/NotificationRepo/notification_repo.dart';
import 'package:equatable/equatable.dart';
part './notification_event.dart';
part './notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepo repo;
  NotificationBloc({required this.repo}) : super(NotificationInitialState()) {
    on<NotificationLoadedEvent>(_onNotficationLoaded);
  }

  void _onNotficationLoaded(
      NotificationLoadedEvent event, Emitter<NotificationState> emit) async {
    try {
      emit(NotificationLoadingState());
      await repo.getNotificationApi().then(
        (value) {
          emit(
            NotificationCompletedState(
              notifs: value.notificationList ?? [],
            ),
          );
        },
      ).onError(
        (error, stackTrace) {
          emit(NotificationErrorState(errorMsg: error.toString()));
        },
      );
    } catch (e) {
      emit(NotificationErrorState(errorMsg: e.toString()));
    }
  }
}
