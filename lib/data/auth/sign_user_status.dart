import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_user_status.freezed.dart';

@freezed
class SignUserStatus {
  SignUserStatus._();

  factory SignUserStatus.invalidEmail() = InvalidEmailSignStatus;
  factory SignUserStatus.wrongCredentials() = WrongCredentialsSignStatus;
  factory SignUserStatus.succesful({required UserCredential credential}) =
      SuccesfulSignStatus;
}
