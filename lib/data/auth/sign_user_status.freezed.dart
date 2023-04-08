// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_user_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUserStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() wrongCredentials,
    required TResult Function(UserCredential credential) succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? wrongCredentials,
    TResult? Function(UserCredential credential)? succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? wrongCredentials,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailSignStatus value) invalidEmail,
    required TResult Function(WrongCredentialsSignStatus value)
        wrongCredentials,
    required TResult Function(SuccesfulSignStatus value) succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult? Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult? Function(SuccesfulSignStatus value)? succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult Function(SuccesfulSignStatus value)? succesful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUserStatusCopyWith<$Res> {
  factory $SignUserStatusCopyWith(
          SignUserStatus value, $Res Function(SignUserStatus) then) =
      _$SignUserStatusCopyWithImpl<$Res, SignUserStatus>;
}

/// @nodoc
class _$SignUserStatusCopyWithImpl<$Res, $Val extends SignUserStatus>
    implements $SignUserStatusCopyWith<$Res> {
  _$SignUserStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailSignStatusCopyWith<$Res> {
  factory _$$InvalidEmailSignStatusCopyWith(_$InvalidEmailSignStatus value,
          $Res Function(_$InvalidEmailSignStatus) then) =
      __$$InvalidEmailSignStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailSignStatusCopyWithImpl<$Res>
    extends _$SignUserStatusCopyWithImpl<$Res, _$InvalidEmailSignStatus>
    implements _$$InvalidEmailSignStatusCopyWith<$Res> {
  __$$InvalidEmailSignStatusCopyWithImpl(_$InvalidEmailSignStatus _value,
      $Res Function(_$InvalidEmailSignStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailSignStatus extends InvalidEmailSignStatus {
  const _$InvalidEmailSignStatus() : super._();

  @override
  String toString() {
    return 'SignUserStatus.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailSignStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() wrongCredentials,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? wrongCredentials,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? wrongCredentials,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailSignStatus value) invalidEmail,
    required TResult Function(WrongCredentialsSignStatus value)
        wrongCredentials,
    required TResult Function(SuccesfulSignStatus value) succesful,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult? Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult? Function(SuccesfulSignStatus value)? succesful,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult Function(SuccesfulSignStatus value)? succesful,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailSignStatus extends SignUserStatus {
  const factory InvalidEmailSignStatus() = _$InvalidEmailSignStatus;
  const InvalidEmailSignStatus._() : super._();
}

/// @nodoc
abstract class _$$WrongCredentialsSignStatusCopyWith<$Res> {
  factory _$$WrongCredentialsSignStatusCopyWith(
          _$WrongCredentialsSignStatus value,
          $Res Function(_$WrongCredentialsSignStatus) then) =
      __$$WrongCredentialsSignStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WrongCredentialsSignStatusCopyWithImpl<$Res>
    extends _$SignUserStatusCopyWithImpl<$Res, _$WrongCredentialsSignStatus>
    implements _$$WrongCredentialsSignStatusCopyWith<$Res> {
  __$$WrongCredentialsSignStatusCopyWithImpl(
      _$WrongCredentialsSignStatus _value,
      $Res Function(_$WrongCredentialsSignStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WrongCredentialsSignStatus extends WrongCredentialsSignStatus {
  const _$WrongCredentialsSignStatus() : super._();

  @override
  String toString() {
    return 'SignUserStatus.wrongCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongCredentialsSignStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() wrongCredentials,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return wrongCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? wrongCredentials,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return wrongCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? wrongCredentials,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailSignStatus value) invalidEmail,
    required TResult Function(WrongCredentialsSignStatus value)
        wrongCredentials,
    required TResult Function(SuccesfulSignStatus value) succesful,
  }) {
    return wrongCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult? Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult? Function(SuccesfulSignStatus value)? succesful,
  }) {
    return wrongCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult Function(SuccesfulSignStatus value)? succesful,
    required TResult orElse(),
  }) {
    if (wrongCredentials != null) {
      return wrongCredentials(this);
    }
    return orElse();
  }
}

abstract class WrongCredentialsSignStatus extends SignUserStatus {
  const factory WrongCredentialsSignStatus() = _$WrongCredentialsSignStatus;
  const WrongCredentialsSignStatus._() : super._();
}

/// @nodoc
abstract class _$$SuccesfulSignStatusCopyWith<$Res> {
  factory _$$SuccesfulSignStatusCopyWith(_$SuccesfulSignStatus value,
          $Res Function(_$SuccesfulSignStatus) then) =
      __$$SuccesfulSignStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential credential});
}

/// @nodoc
class __$$SuccesfulSignStatusCopyWithImpl<$Res>
    extends _$SignUserStatusCopyWithImpl<$Res, _$SuccesfulSignStatus>
    implements _$$SuccesfulSignStatusCopyWith<$Res> {
  __$$SuccesfulSignStatusCopyWithImpl(
      _$SuccesfulSignStatus _value, $Res Function(_$SuccesfulSignStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$SuccesfulSignStatus(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$SuccesfulSignStatus extends SuccesfulSignStatus {
  const _$SuccesfulSignStatus({required this.credential}) : super._();

  @override
  final UserCredential credential;

  @override
  String toString() {
    return 'SignUserStatus.succesful(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccesfulSignStatus &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccesfulSignStatusCopyWith<_$SuccesfulSignStatus> get copyWith =>
      __$$SuccesfulSignStatusCopyWithImpl<_$SuccesfulSignStatus>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() wrongCredentials,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return succesful(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? wrongCredentials,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return succesful?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? wrongCredentials,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailSignStatus value) invalidEmail,
    required TResult Function(WrongCredentialsSignStatus value)
        wrongCredentials,
    required TResult Function(SuccesfulSignStatus value) succesful,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult? Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult? Function(SuccesfulSignStatus value)? succesful,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailSignStatus value)? invalidEmail,
    TResult Function(WrongCredentialsSignStatus value)? wrongCredentials,
    TResult Function(SuccesfulSignStatus value)? succesful,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class SuccesfulSignStatus extends SignUserStatus {
  const factory SuccesfulSignStatus(
      {required final UserCredential credential}) = _$SuccesfulSignStatus;
  const SuccesfulSignStatus._() : super._();

  UserCredential get credential;
  @JsonKey(ignore: true)
  _$$SuccesfulSignStatusCopyWith<_$SuccesfulSignStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
