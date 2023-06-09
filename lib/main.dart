import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mock_chat_flutter/firebase_options.dart';
import 'package:mock_chat_flutter/presentation/auth/auth_page.dart';
import 'package:mock_chat_flutter/presentation/messages/messages_page.dart';

import 'data/auth/firebase_auth_service.dart';
import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(canvasColor: Colors.transparent),
      home: getIt<FirebaseAuthService>().currentUser == null
          ? const AuthPage()
          : const MessagesPage(),
    );
  }
}
