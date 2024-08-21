part of '../tdapi.dart';

/// **StarSubscription** *(starSubscription)* - basic class
///
/// Contains information about subscription to a channel chat paid in Telegram Stars.
///
/// * [id]: Unique identifier of the subscription.
/// * [chatId]: Identifier of the channel chat that is subscribed.
/// * [expirationDate]: Point in time (Unix timestamp) when the subscription will expire or expired.
/// * [canReuse]: True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again.
/// * [isCanceled]: True, if the subscription was canceled.
/// * [isExpiring]: True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it.
/// * [inviteLink]: The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore.
/// * [pricing]: The subscription plan.
final class StarSubscription extends TdObject {
  /// **StarSubscription** *(starSubscription)* - basic class
  ///
  /// Contains information about subscription to a channel chat paid in Telegram Stars.
  ///
  /// * [id]: Unique identifier of the subscription.
  /// * [chatId]: Identifier of the channel chat that is subscribed.
  /// * [expirationDate]: Point in time (Unix timestamp) when the subscription will expire or expired.
  /// * [canReuse]: True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again.
  /// * [isCanceled]: True, if the subscription was canceled.
  /// * [isExpiring]: True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it.
  /// * [inviteLink]: The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore.
  /// * [pricing]: The subscription plan.
  const StarSubscription({
    required this.id,
    required this.chatId,
    required this.expirationDate,
    required this.canReuse,
    required this.isCanceled,
    required this.isExpiring,
    required this.inviteLink,
    required this.pricing,
  });

  /// Unique identifier of the subscription
  final String id;

  /// Identifier of the channel chat that is subscribed
  final int chatId;

  /// Point in time (Unix timestamp) when the subscription will expire or expired
  final int expirationDate;

  /// True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again
  final bool canReuse;

  /// True, if the subscription was canceled
  final bool isCanceled;

  /// True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it
  final bool isExpiring;

  /// The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore
  final String inviteLink;

  /// The subscription plan
  final StarSubscriptionPricing pricing;

  /// Parse from a json
  factory StarSubscription.fromJson(Map<String, dynamic> json) =>
      StarSubscription(
        id: json['id'],
        chatId: json['chat_id'],
        expirationDate: json['expiration_date'],
        canReuse: json['can_reuse'],
        isCanceled: json['is_canceled'],
        isExpiring: json['is_expiring'],
        inviteLink: json['invite_link'],
        pricing: StarSubscriptionPricing.fromJson(json['pricing']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "id": id,
      "chat_id": chatId,
      "expiration_date": expirationDate,
      "can_reuse": canReuse,
      "is_canceled": isCanceled,
      "is_expiring": isExpiring,
      "invite_link": inviteLink,
      "pricing": pricing.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [id]: Unique identifier of the subscription
  /// * [chat_id]: Identifier of the channel chat that is subscribed
  /// * [expiration_date]: Point in time (Unix timestamp) when the subscription will expire or expired
  /// * [can_reuse]: True, if the subscription is active and the user can use the method reuseStarSubscription to join the subscribed chat again
  /// * [is_canceled]: True, if the subscription was canceled
  /// * [is_expiring]: True, if the subscription expires soon and there are no enough Telegram Stars on the user's balance to extend it
  /// * [invite_link]: The invite link that can be used to renew the subscription if it has been expired; may be empty, if the link isn't available anymore
  /// * [pricing]: The subscription plan
  StarSubscription copyWith({
    String? id,
    int? chatId,
    int? expirationDate,
    bool? canReuse,
    bool? isCanceled,
    bool? isExpiring,
    String? inviteLink,
    StarSubscriptionPricing? pricing,
  }) =>
      StarSubscription(
        id: id ?? this.id,
        chatId: chatId ?? this.chatId,
        expirationDate: expirationDate ?? this.expirationDate,
        canReuse: canReuse ?? this.canReuse,
        isCanceled: isCanceled ?? this.isCanceled,
        isExpiring: isExpiring ?? this.isExpiring,
        inviteLink: inviteLink ?? this.inviteLink,
        pricing: pricing ?? this.pricing,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starSubscription';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
