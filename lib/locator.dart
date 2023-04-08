import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:mock_chat_flutter/data/auth/firebase_auth_service.dart';
import 'package:mock_chat_flutter/data/messages/service/firebase_message_service.dart';
import 'package:mock_chat_flutter/data/messages/service/message_service.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerSingleton<MessageService>(
      FirebaseMessageService(FirebaseDatabase.instance.ref("messages")));
  getIt.registerSingleton<FirebaseAuthService>(
      FirebaseAuthService(FirebaseAuth.instance));
}
