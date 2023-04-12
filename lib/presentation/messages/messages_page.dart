import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mock_chat_flutter/data/auth/firebase_auth_service.dart';
import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:mock_chat_flutter/data/messages/service/message_service.dart';
import 'package:mock_chat_flutter/domain/provider/message_provider.dart';
import 'package:mock_chat_flutter/locator.dart';
import 'package:mock_chat_flutter/presentation/auth/auth_page.dart';
import 'package:mock_chat_flutter/presentation/messages/message_card.dart';

StateNotifierProvider<MessageProvider, List<MessageDTO>> messageProvider =
    StateNotifierProvider((ref) => MessageProvider(getIt<MessageService>()));

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mock Chat'),
          actions: [
            IconButton(
              onPressed: () => getIt<FirebaseAuthService>().signOut().then(
                    (value) => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const AuthPage(),
                      ),
                    ),
                  ),
              icon: const Icon(Icons.exit_to_app),
            )
          ],
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
    FirebaseAuthService authService = getIt<FirebaseAuthService>();

    return Center(
      child: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, ref, child) {
                var messages = ref.watch(messageProvider);
                return SingleChildScrollView(
                  child: Column(
                    children: messages
                        .map(
                          (e) => MessageCard(
                            message: e,
                            fromUser: e.authorUid == authService.currentUser!.uid,
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 96,
            child: _MessageInput(),
          ),
        ],
      ),
    );
  }
}

class _MessageInput extends StatefulWidget {
  const _MessageInput({super.key});

  @override
  State<_MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<_MessageInput> {
  final _messageTextContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          color: Color.fromARGB(255, 248, 248, 248),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, -4),
              blurRadius: 8,
            ),
          ]),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageTextContoller,
            ),
          ),
          IconButton(
            onPressed: () {
              if (_messageTextContoller.text.trim().isEmpty) return;
              getIt<MessageService>().addMessage(
                MessageDTO(
                  authorName:
                      getIt<FirebaseAuthService>().currentUser!.displayName ??
                          "Anonymus",
                  message: _messageTextContoller.text,
                  authorUid: getIt<FirebaseAuthService>().currentUser!.uid,
                ),
              );
              _messageTextContoller.text = "";
            },
            icon: const Icon(Icons.send_outlined),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _messageTextContoller.dispose();
    super.dispose();
  }
}
