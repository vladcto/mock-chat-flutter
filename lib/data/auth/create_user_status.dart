import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_status.freezed.dart';

@freezed
class CreateUserStatus {
  CreateUserStatus._();

  factory CreateUserStatus.invalidEmail() = InvalidEmailCreateException;
  factory CreateUserStatus.usedEmail() = UsedEmailCreateException;
  factory CreateUserStatus.succesful({required UserCredential credential}) =
      SuccesfulCreate;
}
