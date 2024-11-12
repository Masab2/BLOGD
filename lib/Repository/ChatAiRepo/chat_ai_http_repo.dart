import 'dart:developer';

import 'package:blog_app/Config/AppUrl/app_url.dart';
import 'package:blog_app/Data/Network/network_api_service.dart';
import 'package:blog_app/Model/ChatAiModel/chat_ai_model.dart';
import 'package:blog_app/Repository/ChatAiRepo/chat_ai_repo.dart';

class ChatAIHttpRepo extends ChatAIRepo {
  final _api = NetworkApiService();
  @override
  Future<ChatAiModel> chatAIApi(List<ChatAiModel> previousMessages) async {
    Map<String, dynamic> data = {
      "contents": previousMessages.map((e) => e.toJson()).toList(),
      "generationConfig": {
        "temperature": 1,
        "maxOutputTokens": 1000,
      }
    };
    var response =
        await _api.getPostApiResponse(AppUrl.getGemmineChatUrl, data);

    final List<dynamic> candidates = response['candidates'];
    final content = candidates[0]['content'];
    final parts = (content['parts'] as List<dynamic>)
        .map((part) => ChatPart.fromJson(part))
        .toList();
    log(response.toString());
    return ChatAiModel(
      role: 'model',
      parts: parts,
    );
  }
}
