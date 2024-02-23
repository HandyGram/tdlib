part of '../tdapi.dart';

/// **MessageSponsor** *(messageSponsor)* - basic class
///
/// Information about the sponsor of a message.
///
/// * [type]: Type of the sponsor.
/// * [photo]: Photo of the sponsor; may be null if must not be shown *(optional)*.
/// * [info]: Additional optional information about the sponsor to be shown along with the message.
final class MessageSponsor extends TdObject {
  
  /// **MessageSponsor** *(messageSponsor)* - basic class
  ///
  /// Information about the sponsor of a message.
  ///
  /// * [type]: Type of the sponsor.
  /// * [photo]: Photo of the sponsor; may be null if must not be shown *(optional)*.
  /// * [info]: Additional optional information about the sponsor to be shown along with the message.
  const MessageSponsor({
    required this.type,
    this.photo,
    required this.info,
  });
  
  /// Type of the sponsor
  final MessageSponsorType type;

  /// Photo of the sponsor; may be null if must not be shown
  final ChatPhotoInfo? photo;

  /// Additional optional information about the sponsor to be shown along with the message
  final String info;
  
  /// Parse from a json
  factory MessageSponsor.fromJson(Map<String, dynamic> json) => MessageSponsor(
    type: MessageSponsorType.fromJson(json['type']),
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    info: json['info'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "type": type.toJson(),
      "photo": photo?.toJson(),
      "info": info,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [type]: Type of the sponsor
  /// * [photo]: Photo of the sponsor; may be null if must not be shown
  /// * [info]: Additional optional information about the sponsor to be shown along with the message
  MessageSponsor copyWith({
    MessageSponsorType? type,
    ChatPhotoInfo? photo,
    String? info,
  }) => MessageSponsor(
    type: type ?? this.type,
    photo: photo ?? this.photo,
    info: info ?? this.info,
  );

  /// TDLib object type
  static const String defaultObjectId = 'messageSponsor';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
