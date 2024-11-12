part of 'chat_bloc.dart';

abstract class ChatState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ChatInitial extends ChatState {}

class ChatSuccessState extends ChatState {
  final List<ChatAiModel> messages;

  ChatSuccessState({required this.messages});
  @override
  List<Object?> get props => [messages];
}
class ChatFailureState extends ChatState {
  final String messages;

  ChatFailureState({required this.messages});
  @override
  List<Object?> get props => [messages];
}