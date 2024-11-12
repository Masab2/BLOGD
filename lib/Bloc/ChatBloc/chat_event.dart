part of 'chat_bloc.dart';

abstract class ChatEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Chat Event
class ChatMessageEvent extends ChatEvent {
  final String message;
  ChatMessageEvent({required this.message});
  @override
  List<Object?> get props => [message];
}