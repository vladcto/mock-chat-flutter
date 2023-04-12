import 'dart:async';

import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:mock_chat_flutter/data/messages/service/message_service.dart';
import 'package:riverpod/riverpod.dart';

class MessageProvider extends StateNotifier<List<MessageDTO>> {
  late final StreamSubscription subscription;

  MessageProvider(service) : super(List<MessageDTO>.empty()) {
    _initialize(service);
  }

  @override
  void dispose() {
    super.dispose();
    subscription.cancel();
  }

  void _initialize(MessageService service) async {
    try {
      final messages = await service.getMessages();
      state = messages;
      subscription = service.listenUpdates(() async {
        final messages = await service.getMessages();
        state = messages;
      });
    } catch (e) {
      // Handle error
      print('Error: $e');
    }
  }
}
