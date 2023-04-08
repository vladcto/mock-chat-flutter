// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateUserStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() usedEmail,
    required TResult Function(UserCredential credential) succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? usedEmail,
    TResult? Function(UserCredential credential)? succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? usedEmail,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailCreateException value) invalidEmail,
    required TResult Function(UsedEmailCreateException value) usedEmail,
    required TResult Function(SuccesfulCreate value) succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailCreateException value)? invalidEmail,
    TResult? Function(UsedEmailCreateException value)? usedEmail,
    TResult? Function(SuccesfulCreate value)? succesful,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailCreateException value)? invalidEmail,
    TResult Function(UsedEmailCreateException value)? usedEmail,
    TResult Function(SuccesfulCreate value)? succesful,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserStatusCopyWith<$Res> {
  factory $CreateUserStatusCopyWith(
          CreateUserStatus value, $Res Function(CreateUserStatus) then) =
      _$CreateUserStatusCopyWithImpl<$Res, CreateUserStatus>;
}

/// @nodoc
class _$CreateUserStatusCopyWithImpl<$Res, $Val extends CreateUserStatus>
    implements $CreateUserStatusCopyWith<$Res> {
  _$CreateUserStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailCreateExceptionCopyWith<$Res> {
  factory _$$InvalidEmailCreateExceptionCopyWith(
          _$InvalidEmailCreateException value,
          $Res Function(_$InvalidEmailCreateException) then) =
      __$$InvalidEmailCreateExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCreateExceptionCopyWithImpl<$Res>
    extends _$CreateUserStatusCopyWithImpl<$Res, _$InvalidEmailCreateException>
    implements _$$InvalidEmailCreateExceptionCopyWith<$Res> {
  __$$InvalidEmailCreateExceptionCopyWithImpl(
      _$InvalidEmailCreateException _value,
      $Res Function(_$InvalidEmailCreateException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailCreateException extends InvalidEmailCreateException {
  _$InvalidEmailCreateException() : super._();

  @override
  String toString() {
    return 'CreateUserStatus.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailCreateException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() usedEmail,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? usedEmail,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? usedEmail,
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
    required TResult Function(InvalidEmailCreateException value) invalidEmail,
    required TResult Function(UsedEmailCreateException value) usedEmail,
    required TResult Function(SuccesfulCreate value) succesful,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailCreateException value)? invalidEmail,
    TResult? Function(UsedEmailCreateException value)? usedEmail,
    TResult? Function(SuccesfulCreate value)? succesful,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailCreateException value)? invalidEmail,
    TResult Function(UsedEmailCreateException value)? usedEmail,
    TResult Function(SuccesfulCreate value)? succesful,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailCreateException extends CreateUserStatus {
  factory InvalidEmailCreateException() = _$InvalidEmailCreateException;
  InvalidEmailCreateException._() : super._();
}

/// @nodoc
abstract class _$$UsedEmailCreateExceptionCopyWith<$Res> {
  factory _$$UsedEmailCreateExceptionCopyWith(_$UsedEmailCreateException value,
          $Res Function(_$UsedEmailCreateException) then) =
      __$$UsedEmailCreateExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsedEmailCreateExceptionCopyWithImpl<$Res>
    extends _$CreateUserStatusCopyWithImpl<$Res, _$UsedEmailCreateException>
    implements _$$UsedEmailCreateExceptionCopyWith<$Res> {
  __$$UsedEmailCreateExceptionCopyWithImpl(_$UsedEmailCreateException _value,
      $Res Function(_$UsedEmailCreateException) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UsedEmailCreateException extends UsedEmailCreateException {
  _$UsedEmailCreateException() : super._();

  @override
  String toString() {
    return 'CreateUserStatus.usedEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsedEmailCreateException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() usedEmail,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return usedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? usedEmail,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return usedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? usedEmail,
    TResult Function(UserCredential credential)? succesful,
    required TResult orElse(),
  }) {
    if (usedEmail != null) {
      return usedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailCreateException value) invalidEmail,
    required TResult Function(UsedEmailCreateException value) usedEmail,
    required TResult Function(SuccesfulCreate value) succesful,
  }) {
    return usedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailCreateException value)? invalidEmail,
    TResult? Function(UsedEmailCreateException value)? usedEmail,
    TResult? Function(SuccesfulCreate value)? succesful,
  }) {
    return usedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailCreateException value)? invalidEmail,
    TResult Function(UsedEmailCreateException value)? usedEmail,
    TResult Function(SuccesfulCreate value)? succesful,
    required TResult orElse(),
  }) {
    if (usedEmail != null) {
      return usedEmail(this);
    }
    return orElse();
  }
}

abstract class UsedEmailCreateException extends CreateUserStatus {
  factory UsedEmailCreateException() = _$UsedEmailCreateException;
  UsedEmailCreateException._() : super._();
}

/// @nodoc
abstract class _$$SuccesfulCreateCopyWith<$Res> {
  factory _$$SuccesfulCreateCopyWith(
          _$SuccesfulCreate value, $Res Function(_$SuccesfulCreate) then) =
      __$$SuccesfulCreateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCredential credential});
}

/// @nodoc
class __$$SuccesfulCreateCopyWithImpl<$Res>
    extends _$CreateUserStatusCopyWithImpl<$Res, _$SuccesfulCreate>
    implements _$$SuccesfulCreateCopyWith<$Res> {
  __$$SuccesfulCreateCopyWithImpl(
      _$SuccesfulCreate _value, $Res Function(_$SuccesfulCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$SuccesfulCreate(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as UserCredential,
    ));
  }
}

/// @nodoc

class _$SuccesfulCreate extends SuccesfulCreate {
  _$SuccesfulCreate({required this.credential}) : super._();

  @override
  final UserCredential credential;

  @override
  String toString() {
    return 'CreateUserStatus.succesful(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccesfulCreate &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccesfulCreateCopyWith<_$SuccesfulCreate> get copyWith =>
      __$$SuccesfulCreateCopyWithImpl<_$SuccesfulCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function() usedEmail,
    required TResult Function(UserCredential credential) succesful,
  }) {
    return succesful(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function()? usedEmail,
    TResult? Function(UserCredential credential)? succesful,
  }) {
    return succesful?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function()? usedEmail,
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
    required TResult Function(InvalidEmailCreateException value) invalidEmail,
    required TResult Function(UsedEmailCreateException value) usedEmail,
    required TResult Function(SuccesfulCreate value) succesful,
  }) {
    return succesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailCreateException value)? invalidEmail,
    TResult? Function(UsedEmailCreateException value)? usedEmail,
    TResult? Function(SuccesfulCreate value)? succesful,
  }) {
    return succesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailCreateException value)? invalidEmail,
    TResult Function(UsedEmailCreateException value)? usedEmail,
    TResult Function(SuccesfulCreate value)? succesful,
    required TResult orElse(),
  }) {
    if (succesful != null) {
      return succesful(this);
    }
    return orElse();
  }
}

abstract class SuccesfulCreate extends CreateUserStatus {
  factory SuccesfulCreate({required final UserCredential credential}) =
      _$SuccesfulCreate;
  SuccesfulCreate._() : super._();

  UserCredential get credential;
  @JsonKey(ignore: true)
  _$$SuccesfulCreateCopyWith<_$SuccesfulCreate> get copyWith =>
      throw _privateConstructorUsedError;
}
