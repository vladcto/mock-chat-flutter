// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDTO _$$_MessageDTOFromJson(Map<String, dynamic> json) =>
    _$_MessageDTO(
      authorName: json['authorName'] as String,
      authorUid: json['authorUid'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_MessageDTOToJson(_$_MessageDTO instance) =>
    <String, dynamic>{
      'authorName': instance.authorName,
      'authorUid': instance.authorUid,
      'message': instance.message,
    };
