import 'package:injectable/injectable.dart';
import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:firebase_database/firebase_database.dart';
import 'message_service.dart';

@Named("FirebaseMessageLocation")
// ignore: unused_element
DatabaseReference _defaultRef = FirebaseDatabase.instance.ref("/message");

@Injectable(as: MessageService)
class FirebaseMessageService implements MessageService {
  final DatabaseReference ref;

  FirebaseMessageService(@Named("FirebaseMessageLocation") this.ref);

  @override
  void addMessage(MessageDTO message) {
    ref.set(message.toJson());
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
}
