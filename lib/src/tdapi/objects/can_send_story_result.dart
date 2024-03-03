part of '../tdapi.dart';

/// **CanSendStoryResult** *(canSendStoryResult)* - parent
///
/// Represents result of checking whether the current user can send a story in the specific chat.
sealed class CanSendStoryResult extends TdObject {
  /// **CanSendStoryResult** *(canSendStoryResult)* - parent
  ///
  /// Represents result of checking whether the current user can send a story in the specific chat.
  const CanSendStoryResult();

  /// a CanSendStoryResult return type can be :
  /// * [CanSendStoryResultOk]
  /// * [CanSendStoryResultPremiumNeeded]
  /// * [CanSendStoryResultBoostNeeded]
  /// * [CanSendStoryResultActiveStoryLimitExceeded]
  /// * [CanSendStoryResultWeeklyLimitExceeded]
  /// * [CanSendStoryResultMonthlyLimitExceeded]
  factory CanSendStoryResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case CanSendStoryResultOk.defaultObjectId:
        return CanSendStoryResultOk.fromJson(json);
      case CanSendStoryResultPremiumNeeded.defaultObjectId:
        return CanSendStoryResultPremiumNeeded.fromJson(json);
      case CanSendStoryResultBoostNeeded.defaultObjectId:
        return CanSendStoryResultBoostNeeded.fromJson(json);
      case CanSendStoryResultActiveStoryLimitExceeded.defaultObjectId:
        return CanSendStoryResultActiveStoryLimitExceeded.fromJson(json);
      case CanSendStoryResultWeeklyLimitExceeded.defaultObjectId:
        return CanSendStoryResultWeeklyLimitExceeded.fromJson(json);
      case CanSendStoryResultMonthlyLimitExceeded.defaultObjectId:
        return CanSendStoryResultMonthlyLimitExceeded.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of CanSendStoryResult)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  CanSendStoryResult copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'canSendStoryResult';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultOk** *(canSendStoryResultOk)* - child of CanSendStoryResult
///
/// A story can be sent.
final class CanSendStoryResultOk extends CanSendStoryResult {
  /// **CanSendStoryResultOk** *(canSendStoryResultOk)* - child of CanSendStoryResult
  ///
  /// A story can be sent.
  const CanSendStoryResultOk({
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
  factory CanSendStoryResultOk.fromJson(Map<String, dynamic> json) =>
      CanSendStoryResultOk(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  CanSendStoryResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultOk(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canSendStoryResultOk';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultPremiumNeeded** *(canSendStoryResultPremiumNeeded)* - child of CanSendStoryResult
///
/// The user must subscribe to Telegram Premium to be able to post stories.
final class CanSendStoryResultPremiumNeeded extends CanSendStoryResult {
  /// **CanSendStoryResultPremiumNeeded** *(canSendStoryResultPremiumNeeded)* - child of CanSendStoryResult
  ///
  /// The user must subscribe to Telegram Premium to be able to post stories.
  const CanSendStoryResultPremiumNeeded({
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
  factory CanSendStoryResultPremiumNeeded.fromJson(Map<String, dynamic> json) =>
      CanSendStoryResultPremiumNeeded(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  CanSendStoryResultPremiumNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultPremiumNeeded(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canSendStoryResultPremiumNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultBoostNeeded** *(canSendStoryResultBoostNeeded)* - child of CanSendStoryResult
///
/// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat.
final class CanSendStoryResultBoostNeeded extends CanSendStoryResult {
  /// **CanSendStoryResultBoostNeeded** *(canSendStoryResultBoostNeeded)* - child of CanSendStoryResult
  ///
  /// The chat must be boosted first by Telegram Premium subscribers to post more stories. Call getChatBoostStatus to get current boost status of the chat.
  const CanSendStoryResultBoostNeeded({
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
  factory CanSendStoryResultBoostNeeded.fromJson(Map<String, dynamic> json) =>
      CanSendStoryResultBoostNeeded(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  CanSendStoryResultBoostNeeded copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultBoostNeeded(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canSendStoryResultBoostNeeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultActiveStoryLimitExceeded** *(canSendStoryResultActiveStoryLimitExceeded)* - child of CanSendStoryResult
///
/// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire.
final class CanSendStoryResultActiveStoryLimitExceeded
    extends CanSendStoryResult {
  /// **CanSendStoryResultActiveStoryLimitExceeded** *(canSendStoryResultActiveStoryLimitExceeded)* - child of CanSendStoryResult
  ///
  /// The limit for the number of active stories exceeded. The user can buy Telegram Premium, delete an active story, or wait for the oldest story to expire.
  const CanSendStoryResultActiveStoryLimitExceeded({
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
  factory CanSendStoryResultActiveStoryLimitExceeded.fromJson(
          Map<String, dynamic> json) =>
      CanSendStoryResultActiveStoryLimitExceeded(
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  CanSendStoryResultActiveStoryLimitExceeded copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultActiveStoryLimitExceeded(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'canSendStoryResultActiveStoryLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultWeeklyLimitExceeded** *(canSendStoryResultWeeklyLimitExceeded)* - child of CanSendStoryResult
///
/// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
///
/// * [retryAfter]: Time left before the user can send the next story.
final class CanSendStoryResultWeeklyLimitExceeded extends CanSendStoryResult {
  /// **CanSendStoryResultWeeklyLimitExceeded** *(canSendStoryResultWeeklyLimitExceeded)* - child of CanSendStoryResult
  ///
  /// The weekly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
  ///
  /// * [retryAfter]: Time left before the user can send the next story.
  const CanSendStoryResultWeeklyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });

  /// Time left before the user can send the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanSendStoryResultWeeklyLimitExceeded.fromJson(
          Map<String, dynamic> json) =>
      CanSendStoryResultWeeklyLimitExceeded(
        retryAfter: json['retry_after'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "retry_after": retryAfter,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [retry_after]: Time left before the user can send the next story
  @override
  CanSendStoryResultWeeklyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultWeeklyLimitExceeded(
        retryAfter: retryAfter ?? this.retryAfter,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'canSendStoryResultWeeklyLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **CanSendStoryResultMonthlyLimitExceeded** *(canSendStoryResultMonthlyLimitExceeded)* - child of CanSendStoryResult
///
/// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
///
/// * [retryAfter]: Time left before the user can send the next story.
final class CanSendStoryResultMonthlyLimitExceeded extends CanSendStoryResult {
  /// **CanSendStoryResultMonthlyLimitExceeded** *(canSendStoryResultMonthlyLimitExceeded)* - child of CanSendStoryResult
  ///
  /// The monthly limit for the number of posted stories exceeded. The user needs to buy Telegram Premium or wait specified time.
  ///
  /// * [retryAfter]: Time left before the user can send the next story.
  const CanSendStoryResultMonthlyLimitExceeded({
    required this.retryAfter,
    this.extra,
    this.clientId,
  });

  /// Time left before the user can send the next story
  final int retryAfter;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory CanSendStoryResultMonthlyLimitExceeded.fromJson(
          Map<String, dynamic> json) =>
      CanSendStoryResultMonthlyLimitExceeded(
        retryAfter: json['retry_after'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "retry_after": retryAfter,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [retry_after]: Time left before the user can send the next story
  @override
  CanSendStoryResultMonthlyLimitExceeded copyWith({
    int? retryAfter,
    dynamic extra,
    int? clientId,
  }) =>
      CanSendStoryResultMonthlyLimitExceeded(
        retryAfter: retryAfter ?? this.retryAfter,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'canSendStoryResultMonthlyLimitExceeded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
