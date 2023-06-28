part of '../tdapi.dart';

/// **SetBotProfilePhoto** *(setBotProfilePhoto)* - TDLib function
///
/// Changes a profile photo for a bot.
///
/// * [botUserId]: Identifier of the target bot.
/// * [photo]: Profile photo to set; pass null to delete the chat photo *(optional)*.
///
/// [Ok] is returned on completion.
final class SetBotProfilePhoto extends TdFunction {
  
  /// **SetBotProfilePhoto** *(setBotProfilePhoto)* - TDLib function
  ///
  /// Changes a profile photo for a bot.
  ///
  /// * [botUserId]: Identifier of the target bot.
  /// * [photo]: Profile photo to set; pass null to delete the chat photo *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetBotProfilePhoto({
    required this.botUserId,
    this.photo,
  });
  
  /// Identifier of the target bot 
  final int botUserId;

  /// Profile photo to set; pass null to delete the chat photo
  final InputChatPhoto? photo;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "photo": photo?.toJson(),
      "@extra": extra,
		};
	}

  
  SetBotProfilePhoto copyWith({
    int? botUserId,
    InputChatPhoto? photo,
  }) => SetBotProfilePhoto(
    botUserId: botUserId ?? this.botUserId,
    photo: photo ?? this.photo,
  );

  static const String objectType = 'setBotProfilePhoto';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
