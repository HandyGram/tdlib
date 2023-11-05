part of '../tdapi.dart';

/// **CanBoostChatResult** *(canBoostChatResult)* - parent
///
/// Represents result of checking whether the current user can boost the specific chat.
sealed class CanBoostChatResult extends TdObject {
  
  /// **CanBoostChatResult** *(canBoostChatResult)* - parent
  ///
  /// Represents result of checking whether the current user can boost the specific chat.
  const CanBoostChatResult();
  
  /// a CanBoostChatResult return type can be :
  /// * [CanBoostChatResultOk]
  /// * [CanBoostChatResultInvalidChat]
  /// * [CanBoostChatResultAlreadyBoosted]
  /// * [CanBoostChatResultPremiumNeeded]
  /// * [CanBoostChatResultPremiumSubscriptionNeeded]
  /// * [CanBoostChatResultWaitNeeded]
  factory CanBoostChatResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case CanBoostChatResultOk.objectType:
        return CanBoostChatResultOk.fromJson(json);
      case CanBoostChatResultInvalidChat.objectType:
        return CanBoostChatResultInvalidChat.fromJson(json);
      case CanBoostChatResultAlreadyBoosted.objectType:
        return CanBoostChatResultAlreadyBoosted.fromJson(json);
      case CanBoostChatResultPremiumNeeded.objectType:
        return CanBoostChatResultPremiumNeeded.fromJson(json);
      case CanBoostChatResultPremiumSubscriptionNeeded.objectType:
        return CanBoostChatResultPremiumSubscriptionNeeded.fromJson(json);
      case CanBoostChatResultWaitNeeded.objectType:
        return CanBoostChatResultWaitNeeded.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CanBoostChatResult)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  CanBoostChatResult copyWith();

  /// TDLib object type
  static const String objectType = 'canBoostChatResult';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultOk** *(canBoostChatResultOk)* - child of CanBoostChatResult
///
/// The chat can be boosted.
///
/// * [currentlyBoostedChatId]: Identifier of the currently boosted chat from which boost will be removed; 0 if none.
final class CanBoostChatResultOk extends CanBoostChatResult {
  
  /// **CanBoostChatResultOk** *(canBoostChatResultOk)* - child of CanBoostChatResult
  ///
  /// The chat can be boosted.
  ///
  /// * [currentlyBoostedChatId]: Identifier of the currently boosted chat from which boost will be removed; 0 if none.
  const CanBoostChatResultOk({
    required this.currentlyBoostedChatId,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the currently boosted chat from which boost will be removed; 0 if none
  final int currentlyBoostedChatId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultOk.fromJson(Map<String, dynamic> json) => CanBoostChatResultOk(
    currentlyBoostedChatId: json['currently_boosted_chat_id'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "currently_boosted_chat_id": currentlyBoostedChatId,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [currently_boosted_chat_id]: Identifier of the currently boosted chat from which boost will be removed; 0 if none
  @override
  CanBoostChatResultOk copyWith({
    int? currentlyBoostedChatId,
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultOk(
    currentlyBoostedChatId: currentlyBoostedChatId ?? this.currentlyBoostedChatId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultOk';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultInvalidChat** *(canBoostChatResultInvalidChat)* - child of CanBoostChatResult
///
/// The chat can't be boosted.
final class CanBoostChatResultInvalidChat extends CanBoostChatResult {
  
  /// **CanBoostChatResultInvalidChat** *(canBoostChatResultInvalidChat)* - child of CanBoostChatResult
  ///
  /// The chat can't be boosted.
  const CanBoostChatResultInvalidChat({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultInvalidChat.fromJson(Map<String, dynamic> json) => CanBoostChatResultInvalidChat(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CanBoostChatResultInvalidChat copyWith({
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultInvalidChat(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultInvalidChat';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultAlreadyBoosted** *(canBoostChatResultAlreadyBoosted)* - child of CanBoostChatResult
///
/// The chat is already boosted by the user.
final class CanBoostChatResultAlreadyBoosted extends CanBoostChatResult {
  
  /// **CanBoostChatResultAlreadyBoosted** *(canBoostChatResultAlreadyBoosted)* - child of CanBoostChatResult
  ///
  /// The chat is already boosted by the user.
  const CanBoostChatResultAlreadyBoosted({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultAlreadyBoosted.fromJson(Map<String, dynamic> json) => CanBoostChatResultAlreadyBoosted(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CanBoostChatResultAlreadyBoosted copyWith({
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultAlreadyBoosted(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultAlreadyBoosted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultPremiumNeeded** *(canBoostChatResultPremiumNeeded)* - child of CanBoostChatResult
///
/// The user must subscribe to Telegram Premium to be able to boost chats.
final class CanBoostChatResultPremiumNeeded extends CanBoostChatResult {
  
  /// **CanBoostChatResultPremiumNeeded** *(canBoostChatResultPremiumNeeded)* - child of CanBoostChatResult
  ///
  /// The user must subscribe to Telegram Premium to be able to boost chats.
  const CanBoostChatResultPremiumNeeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultPremiumNeeded.fromJson(Map<String, dynamic> json) => CanBoostChatResultPremiumNeeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CanBoostChatResultPremiumNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultPremiumNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultPremiumNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultPremiumSubscriptionNeeded** *(canBoostChatResultPremiumSubscriptionNeeded)* - child of CanBoostChatResult
///
/// The user must have Telegram Premium subscription instead of a gifted Telegram Premium.
final class CanBoostChatResultPremiumSubscriptionNeeded extends CanBoostChatResult {
  
  /// **CanBoostChatResultPremiumSubscriptionNeeded** *(canBoostChatResultPremiumSubscriptionNeeded)* - child of CanBoostChatResult
  ///
  /// The user must have Telegram Premium subscription instead of a gifted Telegram Premium.
  const CanBoostChatResultPremiumSubscriptionNeeded({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultPremiumSubscriptionNeeded.fromJson(Map<String, dynamic> json) => CanBoostChatResultPremiumSubscriptionNeeded(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  CanBoostChatResultPremiumSubscriptionNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultPremiumSubscriptionNeeded(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultPremiumSubscriptionNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **CanBoostChatResultWaitNeeded** *(canBoostChatResultWaitNeeded)* - child of CanBoostChatResult
///
/// The user must wait the specified time before the boost can be moved to another chat.
///
/// * [retryAfter]: Time left before the user can boost another chat.
final class CanBoostChatResultWaitNeeded extends CanBoostChatResult {
  
  /// **CanBoostChatResultWaitNeeded** *(canBoostChatResultWaitNeeded)* - child of CanBoostChatResult
  ///
  /// The user must wait the specified time before the boost can be moved to another chat.
  ///
  /// * [retryAfter]: Time left before the user can boost another chat.
  const CanBoostChatResultWaitNeeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });
  
  /// Time left before the user can boost another chat
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CanBoostChatResultWaitNeeded.fromJson(Map<String, dynamic> json) => CanBoostChatResultWaitNeeded(
    retryAfter: json['retry_after'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "retry_after": retryAfter,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [retry_after]: Time left before the user can boost another chat
  @override
  CanBoostChatResultWaitNeeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) => CanBoostChatResultWaitNeeded(
    retryAfter: retryAfter ?? this.retryAfter,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String objectType = 'canBoostChatResultWaitNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
