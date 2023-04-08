import 'dart:async';

import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:firebase_database/firebase_database.dart';
import 'message_service.dart';

// ignore: unused_element
DatabaseReference _defaultRef = FirebaseDatabase.instance.ref();

class FirebaseMessageService implements MessageService {
  final DatabaseReference ref;

  FirebaseMessageService(this.ref);

  @override
  void addMessage(MessageDTO message) {
    ref.push().set(message.toJson());
  }

  @override
  Future<List<MessageDTO>> getMessages() async {
    var snapshot = await ref.get();
    List<MessageDTO> res = [];
    for (var data in snapshot.children) {
      res.add(MessageDTO.fromJson(data.value as Map<String, dynamic>));
    }
    return res;
  }

  @override
  void listenUpdates(Function callback) => ref.onValue.listen((event) => callback());
}
