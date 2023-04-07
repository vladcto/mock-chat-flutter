// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageDTO _$MessageDTOFromJson(Map<String, dynamic> json) {
  return _MessageDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageDTO {
  String get author => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get sendTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDTOCopyWith<MessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDTOCopyWith<$Res> {
  factory $MessageDTOCopyWith(
          MessageDTO value, $Res Function(MessageDTO) then) =
      _$MessageDTOCopyWithImpl<$Res, MessageDTO>;
  @useResult
  $Res call({String author, String message, DateTime sendTime});
}

/// @nodoc
class _$MessageDTOCopyWithImpl<$Res, $Val extends MessageDTO>
    implements $MessageDTOCopyWith<$Res> {
  _$MessageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? message = null,
    Object? sendTime = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageDTOCopyWith<$Res>
    implements $MessageDTOCopyWith<$Res> {
  factory _$$_MessageDTOCopyWith(
          _$_MessageDTO value, $Res Function(_$_MessageDTO) then) =
      __$$_MessageDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String author, String message, DateTime sendTime});
}

/// @nodoc
class __$$_MessageDTOCopyWithImpl<$Res>
    extends _$MessageDTOCopyWithImpl<$Res, _$_MessageDTO>
    implements _$$_MessageDTOCopyWith<$Res> {
  __$$_MessageDTOCopyWithImpl(
      _$_MessageDTO _value, $Res Function(_$_MessageDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? message = null,
    Object? sendTime = null,
  }) {
    return _then(_$_MessageDTO(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sendTime: null == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageDTO implements _MessageDTO {
  _$_MessageDTO(
      {required this.author, required this.message, required this.sendTime});

  factory _$_MessageDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDTOFromJson(json);

  @override
  final String author;
  @override
  final String message;
  @override
  final DateTime sendTime;

  @override
  String toString() {
    return 'MessageDTO(author: $author, message: $message, sendTime: $sendTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDTO &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, message, sendTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDTOCopyWith<_$_MessageDTO> get copyWith =>
      __$$_MessageDTOCopyWithImpl<_$_MessageDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDTOToJson(
      this,
    );
  }
}

abstract class _MessageDTO implements MessageDTO {
  factory _MessageDTO(
      {required final String author,
      required final String message,
      required final DateTime sendTime}) = _$_MessageDTO;

  factory _MessageDTO.fromJson(Map<String, dynamic> json) =
      _$_MessageDTO.fromJson;

  @override
  String get author;
  @override
  String get message;
  @override
  DateTime get sendTime;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDTOCopyWith<_$_MessageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
