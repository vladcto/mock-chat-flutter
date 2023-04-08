import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:mock_chat_flutter/data/messages/service/message_service.dart';
import 'package:mock_chat_flutter/domain/provider/message_provider.dart';
import 'package:mock_chat_flutter/locator.dart';

StateNotifierProvider<MessageProvider, List<MessageDTO>> messageProvider =
    StateNotifierProvider((ref) => MessageProvider(getIt<MessageService>(), []));

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: const _MainContent(),
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                var messages = ref.watch(messageProvider);
                return ListView.builder(
                  itemBuilder: (context, index) => Text(messages[index].message),
                  itemCount: messages.length,
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () => getIt<MessageService>().addMessage(MessageDTO(
                author: "Me", message: "Some test", sendTime: DateTime.now())),
            child: const Text("Send message"),
          ),
        ],
      ),
    );
  }
}
