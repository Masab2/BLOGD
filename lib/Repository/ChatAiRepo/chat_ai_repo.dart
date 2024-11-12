import 'package:blog_app/Model/ChatAiModel/chat_ai_model.dart';

abstract class ChatAIRepo {
  Future<ChatAiModel> chatAIApi(List<ChatAiModel> previousMessages);
}