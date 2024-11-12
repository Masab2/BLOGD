// ignore_for_file: type_literal_in_constant_pattern

import 'dart:developer';

import 'package:blog_app/Bloc/ChatBloc/chat_bloc.dart';
import 'package:blog_app/Config/Colors/app_color.dart';
import 'package:blog_app/Config/Components/TextFromFeilds/customized_feilds.dart';
import 'package:blog_app/Config/Extenshion/extenshion.dart';
import 'package:blog_app/Config/Utils/custom_date_time.dart';
import 'package:blog_app/Model/ChatAiModel/chat_ai_model.dart';
import 'package:blog_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

import '../../Config/Widget/widgets.dart';

class AiAssistanceView extends StatefulWidget {
  const AiAssistanceView({super.key});

  @override
  State<AiAssistanceView> createState() => _AiAssistanceViewState();
}

class _AiAssistanceViewState extends State<AiAssistanceView> {
  final promptController = TextEditingController();
  late ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = ChatBloc(chatAIRepo: getIt());
  }

  @override
  void dispose() {
    _chatBloc.close();
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BLOGD BOT",
          style: GoogleFonts.lora(
            fontSize: context.mh * 0.027,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => _chatBloc,
        child: BlocConsumer<ChatBloc, ChatState>(
          listener: (context, state) {},
          builder: (context, state) {
            log("Updated");
            switch (state.runtimeType) {
              case ChatSuccessState:
                List<ChatAiModel> messages =
                    (state as ChatSuccessState).messages;
                log(messages.length.toString());
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return ChatBubble(
                            isSent: messages[index].role.toString(),
                            text: messages[index].parts![0].text,
                            time: CustomDateTime.formatTime(DateTime.now()),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(context.mw * 0.02),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomizedFeilds(
                              controller: promptController,
                              hintText: 'Write a message',
                              prefixIcon: IconlyBold.chat,
                            ),
                          ),
                          0.02.pw(context),
                          CircleAvatar(
                            backgroundColor: AppColors.blackColor,
                            radius: 25,
                            child: Center(
                              child: IconButton(
                                icon: Icon(IconlyBold.send,
                                    color: AppColors.whiteColor),
                                onPressed: () {
                                  final text = promptController.text;
                                  promptController.clear();
                                  _chatBloc
                                      .add(ChatMessageEvent(message: text));
                                  setState(() {});
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );

              case ChatFailureState:
                state as ChatFailureState;
                return Center(child: Text(state.messages));
              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
