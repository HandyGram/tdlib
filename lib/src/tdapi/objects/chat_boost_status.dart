part of '../tdapi.dart';

/// **ChatBoostStatus** *(chatBoostStatus)* - basic class
///
/// Describes current boost status of a chat.
///
/// * [boostUrl]: An HTTP URL, which can be used to boost the chat.
/// * [isBoosted]: True, if the current user has already boosted the chat.
/// * [level]: Current boost level of the chat.
/// * [boostCount]: The number of times the chat was boosted.
/// * [currentLevelBoostCount]: The number of boosts added to reach the current level.
/// * [nextLevelBoostCount]: The number of boosts needed to reach the next level; 0 if the next level isn't available.
/// * [premiumMemberCount]: Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat.
/// * [premiumMemberPercentage]: A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat.
final class ChatBoostStatus extends TdObject {
  
  /// **ChatBoostStatus** *(chatBoostStatus)* - basic class
  ///
  /// Describes current boost status of a chat.
  ///
  /// * [boostUrl]: An HTTP URL, which can be used to boost the chat.
  /// * [isBoosted]: True, if the current user has already boosted the chat.
  /// * [level]: Current boost level of the chat.
  /// * [boostCount]: The number of times the chat was boosted.
  /// * [currentLevelBoostCount]: The number of boosts added to reach the current level.
  /// * [nextLevelBoostCount]: The number of boosts needed to reach the next level; 0 if the next level isn't available.
  /// * [premiumMemberCount]: Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat.
  /// * [premiumMemberPercentage]: A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat.
  const ChatBoostStatus({
    required this.boostUrl,
    required this.isBoosted,
    required this.level,
    required this.boostCount,
    required this.currentLevelBoostCount,
    required this.nextLevelBoostCount,
    required this.premiumMemberCount,
    required this.premiumMemberPercentage,
    this.extra,
    this.clientId,
  });
  
  /// An HTTP URL, which can be used to boost the chat
  final String boostUrl;

  /// True, if the current user has already boosted the chat
  final bool isBoosted;

  /// Current boost level of the chat
  final int level;

  /// The number of times the chat was boosted
  final int boostCount;

  /// The number of boosts added to reach the current level
  final int currentLevelBoostCount;

  /// The number of boosts needed to reach the next level; 0 if the next level isn't available
  final int nextLevelBoostCount;

  /// Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  final int premiumMemberCount;

  /// A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  final double premiumMemberPercentage;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatBoostStatus.fromJson(Map<String, dynamic> json) => ChatBoostStatus(
    boostUrl: json['boost_url'],
    isBoosted: json['is_boosted'],
    level: json['level'],
    boostCount: json['boost_count'],
    currentLevelBoostCount: json['current_level_boost_count'],
    nextLevelBoostCount: json['next_level_boost_count'],
    premiumMemberCount: json['premium_member_count'],
    premiumMemberPercentage: json['premium_member_percentage'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "boost_url": boostUrl,
      "is_boosted": isBoosted,
      "level": level,
      "boost_count": boostCount,
      "current_level_boost_count": currentLevelBoostCount,
      "next_level_boost_count": nextLevelBoostCount,
      "premium_member_count": premiumMemberCount,
      "premium_member_percentage": premiumMemberPercentage,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [boost_url]: An HTTP URL, which can be used to boost the chat
  /// * [is_boosted]: True, if the current user has already boosted the chat
  /// * [level]: Current boost level of the chat
  /// * [boost_count]: The number of times the chat was boosted
  /// * [current_level_boost_count]: The number of boosts added to reach the current level
  /// * [next_level_boost_count]: The number of boosts needed to reach the next level; 0 if the next level isn't available
  /// * [premium_member_count]: Approximate number of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  /// * [premium_member_percentage]: A percentage of Telegram Premium subscribers joined the chat; always 0 if the current user isn't an administrator in the chat
  ChatBoostStatus copyWith({
    String? boostUrl,
    bool? isBoosted,
    int? level,
    int? boostCount,
    int? currentLevelBoostCount,
    int? nextLevelBoostCount,
    int? premiumMemberCount,
    double? premiumMemberPercentage,
    dynamic extra,
    int? clientId,
  }) => ChatBoostStatus(
    boostUrl: boostUrl ?? this.boostUrl,
    isBoosted: isBoosted ?? this.isBoosted,
    level: level ?? this.level,
    boostCount: boostCount ?? this.boostCount,
    currentLevelBoostCount: currentLevelBoostCount ?? this.currentLevelBoostCount,
    nextLevelBoostCount: nextLevelBoostCount ?? this.nextLevelBoostCount,
    premiumMemberCount: premiumMemberCount ?? this.premiumMemberCount,
    premiumMemberPercentage: premiumMemberPercentage ?? this.premiumMemberPercentage,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'chatBoostStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
