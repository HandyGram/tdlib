part of '../tdapi.dart';

/// **ReportChatSponsoredMessageOption** *(reportChatSponsoredMessageOption)* - basic class
///
/// Describes an option to report a sponsored message.
///
/// * [id]: Unique identifier of the option.
/// * [text]: Text of the option.
final class ReportChatSponsoredMessageOption extends TdObject {
  /// **ReportChatSponsoredMessageOption** *(reportChatSponsoredMessageOption)* - basic class
  ///
  /// Describes an option to report a sponsored message.
  ///
  /// * [id]: Unique identifier of the option.
  /// * [text]: Text of the option.
  const ReportChatSponsoredMessageOption({
    required this.id,
    required this.text,
  });

  /// Unique identifier of the option
  final String id;

  /// Text of the option
  final String text;

  /// Parse from a json
  factory ReportChatSponsoredMessageOption.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageOption(
        id: json['id'],
        text: json['text'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "text": text,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the option
  /// * [text]: Text of the option
  ReportChatSponsoredMessageOption copyWith({
    String? id,
    String? text,
  }) =>
      ReportChatSponsoredMessageOption(
        id: id ?? this.id,
        text: text ?? this.text,
      );

  /// TDLib object type
  static const String defaultObjectId = 'reportChatSponsoredMessageOption';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
