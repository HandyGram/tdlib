part of '../tdapi.dart';

/// **GetStarWithdrawalUrl** *(getStarWithdrawalUrl)* - TDLib function
///
/// Returns URL for Telegram star withdrawal.
///
/// * [ownerId]: Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_revenue_statistics == true.
/// * [starCount]: The number of Telegram stars to withdraw. Must be at least getOption("star_withdrawal_count_min").
/// * [password]: The 2-step verification password of the current user.
///
/// [HttpUrl] is returned on completion.
final class GetStarWithdrawalUrl extends TdFunction {
  /// **GetStarWithdrawalUrl** *(getStarWithdrawalUrl)* - TDLib function
  ///
  /// Returns URL for Telegram star withdrawal.
  ///
  /// * [ownerId]: Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_revenue_statistics == true.
  /// * [starCount]: The number of Telegram stars to withdraw. Must be at least getOption("star_withdrawal_count_min").
  /// * [password]: The 2-step verification password of the current user.
  ///
  /// [HttpUrl] is returned on completion.
  const GetStarWithdrawalUrl({
    required this.ownerId,
    required this.starCount,
    required this.password,
  });

  /// Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_revenue_statistics == true
  final MessageSender ownerId;

  /// The number of Telegram stars to withdraw. Must be at least getOption("star_withdrawal_count_min")
  final int starCount;

  /// The 2-step verification password of the current user
  final String password;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "owner_id": ownerId.toJson(),
      "star_count": starCount,
      "password": password,
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [owner_id]: Identifier of the owner of the Telegram stars; can be identifier of an owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_revenue_statistics == true
  /// * [star_count]: The number of Telegram stars to withdraw. Must be at least getOption("star_withdrawal_count_min")
  /// * [password]: The 2-step verification password of the current user
  GetStarWithdrawalUrl copyWith({
    MessageSender? ownerId,
    int? starCount,
    String? password,
  }) =>
      GetStarWithdrawalUrl(
        ownerId: ownerId ?? this.ownerId,
        starCount: starCount ?? this.starCount,
        password: password ?? this.password,
      );

  /// TDLib object type
  static const String defaultObjectId = 'getStarWithdrawalUrl';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
