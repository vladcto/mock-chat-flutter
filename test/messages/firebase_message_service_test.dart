import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_chat_flutter/data/messages/message_dto.dart';
import 'package:mock_chat_flutter/data/messages/service/firebase_message_service.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'firebase_message_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DataSnapshot>(), MockSpec<DatabaseReference>()])
void main() {
  group("Firebase message service", () {
    MessageDTO message1 =
        MessageDTO(author: "Me", message: "Some", sendTime: DateTime(2002));
    MessageDTO message2 =
        MessageDTO(author: "Second", message: "Other", sendTime: DateTime(2001));

    MockDataSnapshot snapshot = MockDataSnapshot();
    MockDataSnapshot snapshot1 = MockDataSnapshot();
    MockDataSnapshot snapshot2 = MockDataSnapshot();

    when(snapshot1.value).thenReturn(message1.toJson());
    when(snapshot2.value).thenReturn(message2.toJson());
    when(snapshot.children).thenReturn([snapshot1, snapshot2]);

    MockDatabaseReference mockDatabaseRef = MockDatabaseReference();
    when(mockDatabaseRef.get()).thenAnswer((_) async => snapshot);

    FirebaseMessageService firebaseMessageService =
        FirebaseMessageService(mockDatabaseRef);

    test("Firebase get message", () async {
      expect(await firebaseMessageService.getMessages(), [message1, message2]);
    });

    test("Firebase send message", () async {
      firebaseMessageService.addMessage(message1);
      verify(mockDatabaseRef.set(message1.toJson()));
    });
  });
}
