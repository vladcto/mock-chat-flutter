import '../message_dto.dart';

abstract class MessageService {
  void addMessage(MessageDTO message);
  Future<List<MessageDTO>> getMessages();
  void listenUpdates(Function callback);
}
