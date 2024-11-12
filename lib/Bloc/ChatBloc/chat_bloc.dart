import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:blog_app/Model/ChatAiModel/chat_ai_model.dart';
import 'package:blog_app/Repository/ChatAiRepo/chat_ai_repo.dart';
import 'package:equatable/equatable.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatAIRepo chatAIRepo;
  ChatBloc({required this.chatAIRepo})
      : super(ChatSuccessState(messages: const [])) {
    on<ChatMessageEvent>(_onChatMessageEvent);
  }

  List<ChatAiModel> messages = [];
  void _onChatMessageEvent(ChatMessageEvent event, Emitter<ChatState> emit) async {
  messages.add(
    ChatAiModel(
      role: "user",
      parts: [ChatPart(text: event.message)],
    ),
  );

  emit(ChatSuccessState(messages: List.from(messages)));  
  try {
    var value = await chatAIRepo.chatAIApi(messages);
    messages.add(value);
    emit(ChatSuccessState(messages: List.from(messages)));  
    log(value.toString());
  } catch (e) {
    emit(ChatFailureState(messages: e.toString()));  
  }
}

}
