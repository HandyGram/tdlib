part of '../tdapi.dart';

/// **PremiumGiveawayParticipantStatus** *(premiumGiveawayParticipantStatus)* - parent
///
/// Contains information about status of a user in a Telegram Premium giveaway.
sealed class PremiumGiveawayParticipantStatus extends TdObject {
  /// **PremiumGiveawayParticipantStatus** *(premiumGiveawayParticipantStatus)* - parent
  ///
  /// Contains information about status of a user in a Telegram Premium giveaway.
  const PremiumGiveawayParticipantStatus();

  /// a PremiumGiveawayParticipantStatus return type can be :
  /// * [PremiumGiveawayParticipantStatusEligible]
  /// * [PremiumGiveawayParticipantStatusParticipating]
  /// * [PremiumGiveawayParticipantStatusAlreadyWasMember]
  /// * [PremiumGiveawayParticipantStatusAdministrator]
  /// * [PremiumGiveawayParticipantStatusDisallowedCountry]
  factory PremiumGiveawayParticipantStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PremiumGiveawayParticipantStatusEligible.defaultObjectId:
        return PremiumGiveawayParticipantStatusEligible.fromJson(json);
      case PremiumGiveawayParticipantStatusParticipating.defaultObjectId:
        return PremiumGiveawayParticipantStatusParticipating.fromJson(json);
      case PremiumGiveawayParticipantStatusAlreadyWasMember.defaultObjectId:
        return PremiumGiveawayParticipantStatusAlreadyWasMember.fromJson(json);
      case PremiumGiveawayParticipantStatusAdministrator.defaultObjectId:
        return PremiumGiveawayParticipantStatusAdministrator.fromJson(json);
      case PremiumGiveawayParticipantStatusDisallowedCountry.defaultObjectId:
        return PremiumGiveawayParticipantStatusDisallowedCountry.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PremiumGiveawayParticipantStatus)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PremiumGiveawayParticipantStatus copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'premiumGiveawayParticipantStatus';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayParticipantStatusEligible** *(premiumGiveawayParticipantStatusEligible)* - child of PremiumGiveawayParticipantStatus
///
/// The user is eligible for the giveaway.
final class PremiumGiveawayParticipantStatusEligible
    extends PremiumGiveawayParticipantStatus {
  /// **PremiumGiveawayParticipantStatusEligible** *(premiumGiveawayParticipantStatusEligible)* - child of PremiumGiveawayParticipantStatus
  ///
  /// The user is eligible for the giveaway.
  const PremiumGiveawayParticipantStatusEligible();

  /// Parse from a json
  factory PremiumGiveawayParticipantStatusEligible.fromJson(
          Map<String, dynamic> json) =>
      const PremiumGiveawayParticipantStatusEligible();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumGiveawayParticipantStatusEligible copyWith() =>
      const PremiumGiveawayParticipantStatusEligible();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumGiveawayParticipantStatusEligible';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayParticipantStatusParticipating** *(premiumGiveawayParticipantStatusParticipating)* - child of PremiumGiveawayParticipantStatus
///
/// The user participates in the giveaway.
final class PremiumGiveawayParticipantStatusParticipating
    extends PremiumGiveawayParticipantStatus {
  /// **PremiumGiveawayParticipantStatusParticipating** *(premiumGiveawayParticipantStatusParticipating)* - child of PremiumGiveawayParticipantStatus
  ///
  /// The user participates in the giveaway.
  const PremiumGiveawayParticipantStatusParticipating();

  /// Parse from a json
  factory PremiumGiveawayParticipantStatusParticipating.fromJson(
          Map<String, dynamic> json) =>
      const PremiumGiveawayParticipantStatusParticipating();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  PremiumGiveawayParticipantStatusParticipating copyWith() =>
      const PremiumGiveawayParticipantStatusParticipating();

  /// TDLib object type
  static const String defaultObjectId =
      'premiumGiveawayParticipantStatusParticipating';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayParticipantStatusAlreadyWasMember** *(premiumGiveawayParticipantStatusAlreadyWasMember)* - child of PremiumGiveawayParticipantStatus
///
/// The user can't participate in the giveaway, because they have already been member of the chat.
///
/// * [joinedChatDate]: Point in time (Unix timestamp) when the user joined the chat.
final class PremiumGiveawayParticipantStatusAlreadyWasMember
    extends PremiumGiveawayParticipantStatus {
  /// **PremiumGiveawayParticipantStatusAlreadyWasMember** *(premiumGiveawayParticipantStatusAlreadyWasMember)* - child of PremiumGiveawayParticipantStatus
  ///
  /// The user can't participate in the giveaway, because they have already been member of the chat.
  ///
  /// * [joinedChatDate]: Point in time (Unix timestamp) when the user joined the chat.
  const PremiumGiveawayParticipantStatusAlreadyWasMember({
    required this.joinedChatDate,
  });

  /// Point in time (Unix timestamp) when the user joined the chat
  final int joinedChatDate;

  /// Parse from a json
  factory PremiumGiveawayParticipantStatusAlreadyWasMember.fromJson(
          Map<String, dynamic> json) =>
      PremiumGiveawayParticipantStatusAlreadyWasMember(
        joinedChatDate: json['joined_chat_date'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "joined_chat_date": joinedChatDate,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [joined_chat_date]: Point in time (Unix timestamp) when the user joined the chat
  @override
  PremiumGiveawayParticipantStatusAlreadyWasMember copyWith({
    int? joinedChatDate,
  }) =>
      PremiumGiveawayParticipantStatusAlreadyWasMember(
        joinedChatDate: joinedChatDate ?? this.joinedChatDate,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'premiumGiveawayParticipantStatusAlreadyWasMember';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayParticipantStatusAdministrator** *(premiumGiveawayParticipantStatusAdministrator)* - child of PremiumGiveawayParticipantStatus
///
/// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway.
///
/// * [chatId]: Identifier of the chat administered by the user.
final class PremiumGiveawayParticipantStatusAdministrator
    extends PremiumGiveawayParticipantStatus {
  /// **PremiumGiveawayParticipantStatusAdministrator** *(premiumGiveawayParticipantStatusAdministrator)* - child of PremiumGiveawayParticipantStatus
  ///
  /// The user can't participate in the giveaway, because they are an administrator in one of the chats that created the giveaway.
  ///
  /// * [chatId]: Identifier of the chat administered by the user.
  const PremiumGiveawayParticipantStatusAdministrator({
    required this.chatId,
  });

  /// Identifier of the chat administered by the user
  final int chatId;

  /// Parse from a json
  factory PremiumGiveawayParticipantStatusAdministrator.fromJson(
          Map<String, dynamic> json) =>
      PremiumGiveawayParticipantStatusAdministrator(
        chatId: json['chat_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat administered by the user
  @override
  PremiumGiveawayParticipantStatusAdministrator copyWith({
    int? chatId,
  }) =>
      PremiumGiveawayParticipantStatusAdministrator(
        chatId: chatId ?? this.chatId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'premiumGiveawayParticipantStatusAdministrator';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **PremiumGiveawayParticipantStatusDisallowedCountry** *(premiumGiveawayParticipantStatusDisallowedCountry)* - child of PremiumGiveawayParticipantStatus
///
/// The user can't participate in the giveaway, because they phone number is from a disallowed country.
///
/// * [userCountryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's country.
final class PremiumGiveawayParticipantStatusDisallowedCountry
    extends PremiumGiveawayParticipantStatus {
  /// **PremiumGiveawayParticipantStatusDisallowedCountry** *(premiumGiveawayParticipantStatusDisallowedCountry)* - child of PremiumGiveawayParticipantStatus
  ///
  /// The user can't participate in the giveaway, because they phone number is from a disallowed country.
  ///
  /// * [userCountryCode]: A two-letter ISO 3166-1 alpha-2 country code of the user's country.
  const PremiumGiveawayParticipantStatusDisallowedCountry({
    required this.userCountryCode,
  });

  /// A two-letter ISO 3166-1 alpha-2 country code of the user's country
  final String userCountryCode;

  /// Parse from a json
  factory PremiumGiveawayParticipantStatusDisallowedCountry.fromJson(
          Map<String, dynamic> json) =>
      PremiumGiveawayParticipantStatusDisallowedCountry(
        userCountryCode: json['user_country_code'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_country_code": userCountryCode,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_country_code]: A two-letter ISO 3166-1 alpha-2 country code of the user's country
  @override
  PremiumGiveawayParticipantStatusDisallowedCountry copyWith({
    String? userCountryCode,
  }) =>
      PremiumGiveawayParticipantStatusDisallowedCountry(
        userCountryCode: userCountryCode ?? this.userCountryCode,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'premiumGiveawayParticipantStatusDisallowedCountry';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
