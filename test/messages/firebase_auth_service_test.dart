import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_chat_flutter/data/auth/create_user_status.dart';
import 'package:mock_chat_flutter/data/auth/firebase_auth_service.dart';
import 'package:mock_chat_flutter/data/auth/sign_user_status.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'firebase_auth_service_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FirebaseAuth>()])
void main() {
  group("Firebase Auth service", () {
    MockFirebaseAuth mockAuth = MockFirebaseAuth();
    FirebaseAuthService authService = FirebaseAuthService(mockAuth);

    test("Create", () {
      authService.createUser(password: "some", email: "any@gmail.com");
      verify(mockAuth.createUserWithEmailAndPassword(
              password: "some", email: "any@gmail.com"))
          .called(1);
    });

    test("Log in", () {
      authService.logIn(password: "123", email: "test@gmail.com");
      verify(mockAuth.signInWithEmailAndPassword(
          email: "test@gmail.com", password: "123"));
    });

    test("Reset password", () {
      authService.resetPassword(email: "reset@gmail.com");
      verify(mockAuth.sendPasswordResetEmail(email: "reset@gmail.com"));
    });

    test("Create: invalid email exception", () async {
      when(mockAuth.createUserWithEmailAndPassword(
              email: "invalid", password: "123"))
          .thenAnswer((realInvocation) =>
              throw FirebaseAuthException(code: "invalid-email"));
      expect(
        await authService.createUser(password: "123", email: "invalid"),
        CreateUserStatus.invalidEmail(),
      );
    });

    test("Create: Used email exception", () async {
      when(mockAuth.createUserWithEmailAndPassword(email: "used", password: "123"))
          .thenAnswer((realInvocation) =>
              throw FirebaseAuthException(code: "email-already-in-use"));
      expect(
        await authService.createUser(password: "123", email: "used"),
        CreateUserStatus.usedEmail(),
      );
    });

    test("Log in: wrong password exception", () async {
      when(mockAuth.signInWithEmailAndPassword(
              email: "some@gmail.com", password: "wrong"))
          .thenAnswer((realInvocation) =>
              throw FirebaseAuthException(code: "wrong-password"));
      expect(
        await authService.logIn(password: "wrong", email: "some@gmail.com"),
        SignUserStatus.wrongCredentials(),
      );
    });

    test("Log in: user not found", () async {
      when(mockAuth.signInWithEmailAndPassword(email: "where", password: "123"))
          .thenAnswer((realInvocation) =>
              throw FirebaseAuthException(code: "user-not-found"));
      expect(
        await authService.logIn(password: "123", email: "where"),
        SignUserStatus.wrongCredentials(),
      );
    });

    test("Log in: wrong password exception", () async {
      when(mockAuth.signInWithEmailAndPassword(email: "where", password: "123"))
          .thenAnswer((realInvocation) =>
              throw FirebaseAuthException(code: "wrong-password"));
      expect(
        await authService.logIn(password: "123", email: "where"),
        SignUserStatus.wrongCredentials(),
      );
    });
  });
}
