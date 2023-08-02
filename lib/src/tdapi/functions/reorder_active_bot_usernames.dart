part of '../tdapi.dart';

/// **ReorderActiveBotUsernames** *(reorderActiveBotUsernames)* - TDLib function
///
/// Changes order of active usernames of a bot. Can be called only if userTypeBot.can_be_edited == true.
///
/// * [botUserId]: Identifier of the target bot.
/// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
///
/// [Ok] is returned on completion.
final class ReorderActiveBotUsernames extends TdFunction {
  
  /// **ReorderActiveBotUsernames** *(reorderActiveBotUsernames)* - TDLib function
  ///
  /// Changes order of active usernames of a bot. Can be called only if userTypeBot.can_be_edited == true.
  ///
  /// * [botUserId]: Identifier of the target bot.
  /// * [usernames]: The new order of active usernames. All currently active usernames must be specified.
  ///
  /// [Ok] is returned on completion.
  const ReorderActiveBotUsernames({
    required this.botUserId,
    required this.usernames,
  });
  
  /// Identifier of the target bot 
  final int botUserId;

  /// The new order of active usernames. All currently active usernames must be specified
  final List<String> usernames;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "usernames": usernames.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [bot_user_id]: Identifier of the target bot 
  /// * [usernames]: The new order of active usernames. All currently active usernames must be specified
  ReorderActiveBotUsernames copyWith({
    int? botUserId,
    List<String>? usernames,
  }) => ReorderActiveBotUsernames(
    botUserId: botUserId ?? this.botUserId,
    usernames: usernames ?? this.usernames,
  );

  /// TDLib object type
  static const String objectType = 'reorderActiveBotUsernames';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
