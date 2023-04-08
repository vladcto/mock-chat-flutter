import 'package:flutter/material.dart';
import 'package:mock_chat_flutter/data/messages/message_dto.dart';

class MessageCard extends StatelessWidget {
  final MessageDTO message;
  final bool fromUser;
  const MessageCard({Key? key, required this.message, required this.fromUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Align(
        alignment: fromUser ? Alignment.centerRight : Alignment.centerLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 320, minWidth: 120),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    fromUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Text(
                      message.authorName,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    message.message,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
