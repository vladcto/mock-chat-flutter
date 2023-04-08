import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_user_status.freezed.dart';

@freezed
class SignUserStatus with _$SignUserStatus {
  const SignUserStatus._();

  const factory SignUserStatus.invalidEmail() = InvalidEmailSignStatus;
  const factory SignUserStatus.wrongCredentials() = WrongCredentialsSignStatus;
  const factory SignUserStatus.succesful({required UserCredential credential}) =
      SuccesfulSignStatus;
}
