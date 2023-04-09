import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:mock_chat_flutter/data/messages/service/message_service.dart';
import 'package:riverpod/riverpod.dart';

class MessageProvider extends StateNotifier<List<MessageDTO>> {
  final MessageService service;

  MessageProvider(this.service, super.state) {
    service.listenUpdates(() => service.getMessages().then((value) {
          if (!mounted) return;
          state = value;
        }));
    service.getMessages().then((value) => state = value);
  }
}
