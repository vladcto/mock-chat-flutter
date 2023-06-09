import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
abstract class MessageDTO with _$MessageDTO {
  factory MessageDTO({
    required String authorName,
    required String authorUid,
    required String message,
  }) = _MessageDTO;

  factory MessageDTO.fromJson(Map<String, dynamic> json) =>
      _$MessageDTOFromJson(json);
}
