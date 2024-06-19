part of '../tdapi.dart';

/// **MessageSponsor** *(messageSponsor)* - basic class
///
/// Information about the sponsor of a message.
///
/// * [url]: URL of the sponsor to be opened when the message is clicked.
/// * [photo]: Photo of the sponsor; may be null if must not be shown *(optional)*.
/// * [info]: Additional optional information about the sponsor to be shown along with the message.
final class MessageSponsor extends TdObject {
  /// **MessageSponsor** *(messageSponsor)* - basic class
  ///
  /// Information about the sponsor of a message.
  ///
  /// * [url]: URL of the sponsor to be opened when the message is clicked.
  /// * [photo]: Photo of the sponsor; may be null if must not be shown *(optional)*.
  /// * [info]: Additional optional information about the sponsor to be shown along with the message.
  const MessageSponsor({
    required this.url,
    this.photo,
    required this.info,
  });

  /// URL of the sponsor to be opened when the message is clicked
  final String url;

  /// Photo of the sponsor; may be null if must not be shown
  final Photo? photo;

  /// Additional optional information about the sponsor to be shown along with the message
  final String info;

  /// Parse from a json
  factory MessageSponsor.fromJson(Map<String, dynamic> json) => MessageSponsor(
        url: json['url'],
        photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
        info: json['info'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "url": url,
      "photo": photo?.toJson(),
      "info": info,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: URL of the sponsor to be opened when the message is clicked
  /// * [photo]: Photo of the sponsor; may be null if must not be shown
  /// * [info]: Additional optional information about the sponsor to be shown along with the message
  MessageSponsor copyWith({
    String? url,
    Photo? photo,
    String? info,
  }) =>
      MessageSponsor(
        url: url ?? this.url,
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
