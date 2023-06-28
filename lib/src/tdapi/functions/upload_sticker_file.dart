part of '../tdapi.dart';

/// **UploadStickerFile** *(uploadStickerFile)* - TDLib function
///
/// Uploads a file with a sticker; returns the uploaded file.
///
/// * [userId]: Sticker file owner; ignored for regular users.
/// * [stickerFormat]: Sticker format.
/// * [sticker]: File file to upload; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
///
/// [File] is returned on completion.
final class UploadStickerFile extends TdFunction {
  
  /// **UploadStickerFile** *(uploadStickerFile)* - TDLib function
  ///
  /// Uploads a file with a sticker; returns the uploaded file.
  ///
  /// * [userId]: Sticker file owner; ignored for regular users.
  /// * [stickerFormat]: Sticker format.
  /// * [sticker]: File file to upload; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  ///
  /// [File] is returned on completion.
  const UploadStickerFile({
    required this.userId,
    required this.stickerFormat,
    required this.sticker,
  });
  
  /// Sticker file owner; ignored for regular users
  final int userId;

  /// Sticker format
  final StickerFormat stickerFormat;

  /// File file to upload; must fit in a 512x512 square. For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  final InputFile sticker;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "user_id": userId,
      "sticker_format": stickerFormat.toJson(),
      "sticker": sticker.toJson(),
      "@extra": extra,
		};
	}

  
  UploadStickerFile copyWith({
    int? userId,
    StickerFormat? stickerFormat,
    InputFile? sticker,
  }) => UploadStickerFile(
    userId: userId ?? this.userId,
    stickerFormat: stickerFormat ?? this.stickerFormat,
    sticker: sticker ?? this.sticker,
  );

  static const String objectType = 'uploadStickerFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
