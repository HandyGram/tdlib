part of '../tdapi.dart';

/// **AddBotMediaPreview** *(addBotMediaPreview)* - TDLib function
///
/// Adds a new media preview to the beginning of the list of media previews of a bot. Returns the added preview after addition is completed server-side. The total number of previews must not exceed getOption("bot_media_preview_count_max") for the given language.
///
/// * [botUserId]: Identifier of the target bot. The bot must be owned and must have the main Web App.
/// * [languageCode]: A two-letter ISO 639-1 language code for which preview is added. If empty, then the preview will be shown to all users for whose languages there are no dedicated previews.. If non-empty, then there must be an official language pack of the same name, which is returned by getLocalizationTargetInfo.
/// * [content]: Content of the added preview.
///
/// [BotMediaPreview] is returned on completion.
final class AddBotMediaPreview extends TdFunction {
  /// **AddBotMediaPreview** *(addBotMediaPreview)* - TDLib function
  ///
  /// Adds a new media preview to the beginning of the list of media previews of a bot. Returns the added preview after addition is completed server-side. The total number of previews must not exceed getOption("bot_media_preview_count_max") for the given language.
  ///
  /// * [botUserId]: Identifier of the target bot. The bot must be owned and must have the main Web App.
  /// * [languageCode]: A two-letter ISO 639-1 language code for which preview is added. If empty, then the preview will be shown to all users for whose languages there are no dedicated previews.. If non-empty, then there must be an official language pack of the same name, which is returned by getLocalizationTargetInfo.
  /// * [content]: Content of the added preview.
  ///
  /// [BotMediaPreview] is returned on completion.
  const AddBotMediaPreview({
    required this.botUserId,
    required this.languageCode,
    required this.content,
  });

  /// Identifier of the target bot. The bot must be owned and must have the main Web App
  final int botUserId;

  /// A two-letter ISO 639-1 language code for which preview is added. If empty, then the preview will be shown to all users for whose languages there are no dedicated previews.. If non-empty, then there must be an official language pack of the same name, which is returned by getLocalizationTargetInfo
  final String languageCode;

  /// Content of the added preview
  final InputStoryContent content;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "bot_user_id": botUserId,
      "language_code": languageCode,
      "content": content.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: Identifier of the target bot. The bot must be owned and must have the main Web App
  /// * [language_code]: A two-letter ISO 639-1 language code for which preview is added. If empty, then the preview will be shown to all users for whose languages there are no dedicated previews.. If non-empty, then there must be an official language pack of the same name, which is returned by getLocalizationTargetInfo
  /// * [content]: Content of the added preview
  AddBotMediaPreview copyWith({
    int? botUserId,
    String? languageCode,
    InputStoryContent? content,
  }) =>
      AddBotMediaPreview(
        botUserId: botUserId ?? this.botUserId,
        languageCode: languageCode ?? this.languageCode,
        content: content ?? this.content,
      );

  /// TDLib object type
  static const String defaultObjectId = 'addBotMediaPreview';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
