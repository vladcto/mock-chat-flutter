// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDTO _$$_MessageDTOFromJson(Map<String, dynamic> json) =>
    _$_MessageDTO(
      author: json['author'] as String,
      message: json['message'] as String,
      sendTime: DateTime.parse(json['sendTime'] as String),
    );

Map<String, dynamic> _$$_MessageDTOToJson(_$_MessageDTO instance) =>
    <String, dynamic>{
      'author': instance.author,
      'message': instance.message,
      'sendTime': instance.sendTime.toIso8601String(),
    };
