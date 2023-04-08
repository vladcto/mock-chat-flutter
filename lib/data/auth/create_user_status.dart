import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_status.freezed.dart';

@freezed
class CreateUserStatus with _$CreateUserStatus {
  const CreateUserStatus._();

  const factory CreateUserStatus.invalidEmail() = InvalidEmailCreateException;
  const factory CreateUserStatus.usedEmail() = UsedEmailCreateException;
  const factory CreateUserStatus.succesful({required UserCredential credential}) =
      SuccesfulCreate;
}
