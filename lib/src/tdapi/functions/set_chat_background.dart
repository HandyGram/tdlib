part of '../tdapi.dart';

/// **SetChatBackground** *(setChatBackground)* - TDLib function
///
/// Changes the background in a specific chat. Supported only in private and secret chats with non-deleted users.
///
/// * [chatId]: Chat identifier.
/// * [background]: The input background to use; pass null to create a new filled background or to remove the current background *(optional)*.
/// * [type]: Background type; pass null to remove the current background *(optional)*.
/// * [darkThemeDimming]: Dimming of the background in dark themes, as a percentage; 0-100.
///
/// [Ok] is returned on completion.
final class SetChatBackground extends TdFunction {
  
  /// **SetChatBackground** *(setChatBackground)* - TDLib function
  ///
  /// Changes the background in a specific chat. Supported only in private and secret chats with non-deleted users.
  ///
  /// * [chatId]: Chat identifier.
  /// * [background]: The input background to use; pass null to create a new filled background or to remove the current background *(optional)*.
  /// * [type]: Background type; pass null to remove the current background *(optional)*.
  /// * [darkThemeDimming]: Dimming of the background in dark themes, as a percentage; 0-100.
  ///
  /// [Ok] is returned on completion.
  const SetChatBackground({
    required this.chatId,
    this.background,
    this.type,
    required this.darkThemeDimming,
  });
  
  /// Chat identifier
  final int chatId;

  /// The input background to use; pass null to create a new filled background or to remove the current background
  final InputBackground? background;

  /// Background type; pass null to remove the current background
  final BackgroundType? type;

  /// Dimming of the background in dark themes, as a percentage; 0-100
  final int darkThemeDimming;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "background": background?.toJson(),
      "type": type?.toJson(),
      "dark_theme_dimming": darkThemeDimming,
      "@extra": extra,
		};
	}

  
  SetChatBackground copyWith({
    int? chatId,
    InputBackground? background,
    BackgroundType? type,
    int? darkThemeDimming,
  }) => SetChatBackground(
    chatId: chatId ?? this.chatId,
    background: background ?? this.background,
    type: type ?? this.type,
    darkThemeDimming: darkThemeDimming ?? this.darkThemeDimming,
  );

  static const String objectType = 'setChatBackground';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
