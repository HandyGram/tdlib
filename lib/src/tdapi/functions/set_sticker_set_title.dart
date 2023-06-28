part of '../tdapi.dart';

/// **SetStickerSetTitle** *(setStickerSetTitle)* - TDLib function
///
/// Sets a sticker set title; for bots only.
///
/// * [name]: Sticker set name.
/// * [title]: New sticker set title.
///
/// [Ok] is returned on completion.
final class SetStickerSetTitle extends TdFunction {
  
  /// **SetStickerSetTitle** *(setStickerSetTitle)* - TDLib function
  ///
  /// Sets a sticker set title; for bots only.
  ///
  /// * [name]: Sticker set name.
  /// * [title]: New sticker set title.
  ///
  /// [Ok] is returned on completion.
  const SetStickerSetTitle({
    required this.name,
    required this.title,
  });
  
  /// Sticker set name 
  final String name;

  /// New sticker set title
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "title": title,
      "@extra": extra,
		};
	}

  
  SetStickerSetTitle copyWith({
    String? name,
    String? title,
  }) => SetStickerSetTitle(
    name: name ?? this.name,
    title: title ?? this.title,
  );

  static const String objectType = 'setStickerSetTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
