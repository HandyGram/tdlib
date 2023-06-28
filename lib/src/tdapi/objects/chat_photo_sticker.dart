part of '../tdapi.dart';

/// **ChatPhotoSticker** *(chatPhotoSticker)* - basic class
///
/// Information about the sticker, which was used to create the chat photo. The sticker is shown at the center of the photo and occupies at most 67% of it.
///
/// * [type]: Type of the sticker.
/// * [backgroundFill]: The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported.
final class ChatPhotoSticker extends TdObject {
  
  /// **ChatPhotoSticker** *(chatPhotoSticker)* - basic class
  ///
  /// Information about the sticker, which was used to create the chat photo. The sticker is shown at the center of the photo and occupies at most 67% of it.
  ///
  /// * [type]: Type of the sticker.
  /// * [backgroundFill]: The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported.
  const ChatPhotoSticker({
    required this.type,
    required this.backgroundFill,
  });
  
  /// Type of the sticker
  final ChatPhotoStickerType type;

  /// The fill to be used as background for the sticker; rotation angle in backgroundFillGradient isn't supported
  final BackgroundFill backgroundFill;
  
  /// Parse from a json
  factory ChatPhotoSticker.fromJson(Map<String, dynamic> json) => ChatPhotoSticker(
    type: ChatPhotoStickerType.fromJson(json['type']),
    backgroundFill: BackgroundFill.fromJson(json['background_fill']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "background_fill": backgroundFill.toJson(),
		};
	}

  
  ChatPhotoSticker copyWith({
    ChatPhotoStickerType? type,
    BackgroundFill? backgroundFill,
  }) => ChatPhotoSticker(
    type: type ?? this.type,
    backgroundFill: backgroundFill ?? this.backgroundFill,
  );

  static const String objectType = 'chatPhotoSticker';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
