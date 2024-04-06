part of '../tdapi.dart';

/// **SetBusinessIntro** *(setBusinessIntro)* - TDLib function
///
/// Changes the business intro of the current user. Requires Telegram Business subscription.
///
/// * [intro]: The new intro of the business; pass null to remove the intro *(optional)*.
///
/// [Ok] is returned on completion.
final class SetBusinessIntro extends TdFunction {
  /// **SetBusinessIntro** *(setBusinessIntro)* - TDLib function
  ///
  /// Changes the business intro of the current user. Requires Telegram Business subscription.
  ///
  /// * [intro]: The new intro of the business; pass null to remove the intro *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetBusinessIntro({
    this.intro,
  });

  /// The new intro of the business; pass null to remove the intro
  final InputBusinessIntro? intro;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "intro": intro?.toJson(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [intro]: The new intro of the business; pass null to remove the intro
  SetBusinessIntro copyWith({
    InputBusinessIntro? intro,
  }) =>
      SetBusinessIntro(
        intro: intro ?? this.intro,
      );

  /// TDLib object type
  static const String defaultObjectId = 'setBusinessIntro';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
