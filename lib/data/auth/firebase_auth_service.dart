import 'package:firebase_auth/firebase_auth.dart';
import 'package:mock_chat_flutter/data/auth/create_user_status.dart';
import 'package:mock_chat_flutter/data/auth/sign_user_status.dart';

class FirebaseAuthService {
  final FirebaseAuth auth;

  FirebaseAuthService(this.auth);

  User? get currentUser => auth.currentUser;

  Future<CreateUserStatus> createUser(
      {required String password, required String email, String? name}) async {
    try {
      var credentail = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = credentail.user!;
      await user.updateDisplayName(name);
      await user.reload();
      return CreateUserStatus.succesful(credential: credentail);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "unknown":
        case "invalid-email":
          return CreateUserStatus.invalidEmail();
        case "email-already-in-use":
          return CreateUserStatus.usedEmail();
        default:
          print("Uncatched exception: $e");
          print("${e.code}");
          rethrow;
      }
    }
  }

  Future<SignUserStatus> logIn(
      {required String password, required String email}) async {
    try {
      var credential =
          await auth.signInWithEmailAndPassword(email: email, password: password);
      return SignUserStatus.succesful(credential: credential);
    } on FirebaseAuthException catch (e) {
      print("${e.code}");
      switch (e.code) {
        case "invalid-email":
          return SignUserStatus.invalidEmail();
        case "unknown":
        case "user-not-found":
        case "wrong-password":
          return SignUserStatus.wrongCredentials();
        default:
          print("Uncatched exception: $e");
          rethrow;
      }
    }
  }

  Future<void> resetPassword({required String email}) =>
      auth.sendPasswordResetEmail(email: email);
}
