part of '../tdapi.dart';

/// **StarTransactionPartner** *(starTransactionPartner)* - parent
///
/// Describes source or recipient of a transaction with Telegram Stars.
sealed class StarTransactionPartner extends TdObject {
  /// **StarTransactionPartner** *(starTransactionPartner)* - parent
  ///
  /// Describes source or recipient of a transaction with Telegram Stars.
  const StarTransactionPartner();

  /// a StarTransactionPartner return type can be :
  /// * [StarTransactionPartnerTelegram]
  /// * [StarTransactionPartnerAppStore]
  /// * [StarTransactionPartnerGooglePlay]
  /// * [StarTransactionPartnerFragment]
  /// * [StarTransactionPartnerTelegramAds]
  /// * [StarTransactionPartnerBot]
  /// * [StarTransactionPartnerBusiness]
  /// * [StarTransactionPartnerChannel]
  /// * [StarTransactionPartnerUser]
  /// * [StarTransactionPartnerUnsupported]
  factory StarTransactionPartner.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StarTransactionPartnerTelegram.defaultObjectId:
        return StarTransactionPartnerTelegram.fromJson(json);
      case StarTransactionPartnerAppStore.defaultObjectId:
        return StarTransactionPartnerAppStore.fromJson(json);
      case StarTransactionPartnerGooglePlay.defaultObjectId:
        return StarTransactionPartnerGooglePlay.fromJson(json);
      case StarTransactionPartnerFragment.defaultObjectId:
        return StarTransactionPartnerFragment.fromJson(json);
      case StarTransactionPartnerTelegramAds.defaultObjectId:
        return StarTransactionPartnerTelegramAds.fromJson(json);
      case StarTransactionPartnerBot.defaultObjectId:
        return StarTransactionPartnerBot.fromJson(json);
      case StarTransactionPartnerBusiness.defaultObjectId:
        return StarTransactionPartnerBusiness.fromJson(json);
      case StarTransactionPartnerChannel.defaultObjectId:
        return StarTransactionPartnerChannel.fromJson(json);
      case StarTransactionPartnerUser.defaultObjectId:
        return StarTransactionPartnerUser.fromJson(json);
      case StarTransactionPartnerUnsupported.defaultObjectId:
        return StarTransactionPartnerUnsupported.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StarTransactionPartner)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  StarTransactionPartner copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartner';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerTelegram** *(starTransactionPartnerTelegram)* - child of StarTransactionPartner
///
/// The transaction is a transaction with Telegram through a bot.
final class StarTransactionPartnerTelegram extends StarTransactionPartner {
  /// **StarTransactionPartnerTelegram** *(starTransactionPartnerTelegram)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with Telegram through a bot.
  const StarTransactionPartnerTelegram();

  /// Parse from a json
  factory StarTransactionPartnerTelegram.fromJson(Map<String, dynamic> json) =>
      const StarTransactionPartnerTelegram();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionPartnerTelegram copyWith() =>
      const StarTransactionPartnerTelegram();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerTelegram';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerAppStore** *(starTransactionPartnerAppStore)* - child of StarTransactionPartner
///
/// The transaction is a transaction with App Store.
final class StarTransactionPartnerAppStore extends StarTransactionPartner {
  /// **StarTransactionPartnerAppStore** *(starTransactionPartnerAppStore)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with App Store.
  const StarTransactionPartnerAppStore();

  /// Parse from a json
  factory StarTransactionPartnerAppStore.fromJson(Map<String, dynamic> json) =>
      const StarTransactionPartnerAppStore();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionPartnerAppStore copyWith() =>
      const StarTransactionPartnerAppStore();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerAppStore';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerGooglePlay** *(starTransactionPartnerGooglePlay)* - child of StarTransactionPartner
///
/// The transaction is a transaction with Google Play.
final class StarTransactionPartnerGooglePlay extends StarTransactionPartner {
  /// **StarTransactionPartnerGooglePlay** *(starTransactionPartnerGooglePlay)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with Google Play.
  const StarTransactionPartnerGooglePlay();

  /// Parse from a json
  factory StarTransactionPartnerGooglePlay.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionPartnerGooglePlay();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionPartnerGooglePlay copyWith() =>
      const StarTransactionPartnerGooglePlay();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerGooglePlay';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerFragment** *(starTransactionPartnerFragment)* - child of StarTransactionPartner
///
/// The transaction is a transaction with Fragment.
///
/// * [withdrawalState]: State of the withdrawal; may be null for refunds from Fragment *(optional)*.
final class StarTransactionPartnerFragment extends StarTransactionPartner {
  /// **StarTransactionPartnerFragment** *(starTransactionPartnerFragment)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with Fragment.
  ///
  /// * [withdrawalState]: State of the withdrawal; may be null for refunds from Fragment *(optional)*.
  const StarTransactionPartnerFragment({
    this.withdrawalState,
  });

  /// State of the withdrawal; may be null for refunds from Fragment
  final RevenueWithdrawalState? withdrawalState;

  /// Parse from a json
  factory StarTransactionPartnerFragment.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerFragment(
        withdrawalState: json['withdrawal_state'] == null
            ? null
            : RevenueWithdrawalState.fromJson(json['withdrawal_state']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "withdrawal_state": withdrawalState?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [withdrawal_state]: State of the withdrawal; may be null for refunds from Fragment
  @override
  StarTransactionPartnerFragment copyWith({
    RevenueWithdrawalState? withdrawalState,
  }) =>
      StarTransactionPartnerFragment(
        withdrawalState: withdrawalState ?? this.withdrawalState,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerFragment';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerTelegramAds** *(starTransactionPartnerTelegramAds)* - child of StarTransactionPartner
///
/// The transaction is a transaction with Telegram Ad platform.
final class StarTransactionPartnerTelegramAds extends StarTransactionPartner {
  /// **StarTransactionPartnerTelegramAds** *(starTransactionPartnerTelegramAds)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with Telegram Ad platform.
  const StarTransactionPartnerTelegramAds();

  /// Parse from a json
  factory StarTransactionPartnerTelegramAds.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionPartnerTelegramAds();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionPartnerTelegramAds copyWith() =>
      const StarTransactionPartnerTelegramAds();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerTelegramAds';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerBot** *(starTransactionPartnerBot)* - child of StarTransactionPartner
///
/// The transaction is a transaction with a bot.
///
/// * [userId]: Identifier of the bot.
/// * [purpose]: Purpose of the transaction.
final class StarTransactionPartnerBot extends StarTransactionPartner {
  /// **StarTransactionPartnerBot** *(starTransactionPartnerBot)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with a bot.
  ///
  /// * [userId]: Identifier of the bot.
  /// * [purpose]: Purpose of the transaction.
  const StarTransactionPartnerBot({
    required this.userId,
    required this.purpose,
  });

  /// Identifier of the bot
  final int userId;

  /// Purpose of the transaction
  final BotTransactionPurpose purpose;

  /// Parse from a json
  factory StarTransactionPartnerBot.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerBot(
        userId: json['user_id'],
        purpose: BotTransactionPurpose.fromJson(json['purpose']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "purpose": purpose.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the bot
  /// * [purpose]: Purpose of the transaction
  @override
  StarTransactionPartnerBot copyWith({
    int? userId,
    BotTransactionPurpose? purpose,
  }) =>
      StarTransactionPartnerBot(
        userId: userId ?? this.userId,
        purpose: purpose ?? this.purpose,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerBot';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerBusiness** *(starTransactionPartnerBusiness)* - child of StarTransactionPartner
///
/// The transaction is a transaction with a business account.
///
/// * [userId]: Identifier of the business account user.
/// * [media]: The bought media if the trancastion wasn't refunded.
final class StarTransactionPartnerBusiness extends StarTransactionPartner {
  /// **StarTransactionPartnerBusiness** *(starTransactionPartnerBusiness)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with a business account.
  ///
  /// * [userId]: Identifier of the business account user.
  /// * [media]: The bought media if the trancastion wasn't refunded.
  const StarTransactionPartnerBusiness({
    required this.userId,
    required this.media,
  });

  /// Identifier of the business account user
  final int userId;

  /// The bought media if the trancastion wasn't refunded
  final List<PaidMedia> media;

  /// Parse from a json
  factory StarTransactionPartnerBusiness.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerBusiness(
        userId: json['user_id'],
        media: List<PaidMedia>.from((json['media'] ?? [])
            .map((item) => PaidMedia.fromJson(item))
            .toList()),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "media": media.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the business account user
  /// * [media]: The bought media if the trancastion wasn't refunded
  @override
  StarTransactionPartnerBusiness copyWith({
    int? userId,
    List<PaidMedia>? media,
  }) =>
      StarTransactionPartnerBusiness(
        userId: userId ?? this.userId,
        media: media ?? this.media,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerBusiness';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerChannel** *(starTransactionPartnerChannel)* - child of StarTransactionPartner
///
/// The transaction is a transaction with a channel chat.
///
/// * [chatId]: Identifier of the chat.
/// * [purpose]: Purpose of the transaction.
final class StarTransactionPartnerChannel extends StarTransactionPartner {
  /// **StarTransactionPartnerChannel** *(starTransactionPartnerChannel)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with a channel chat.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [purpose]: Purpose of the transaction.
  const StarTransactionPartnerChannel({
    required this.chatId,
    required this.purpose,
  });

  /// Identifier of the chat
  final int chatId;

  /// Purpose of the transaction
  final ChannelTransactionPurpose purpose;

  /// Parse from a json
  factory StarTransactionPartnerChannel.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerChannel(
        chatId: json['chat_id'],
        purpose: ChannelTransactionPurpose.fromJson(json['purpose']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "chat_id": chatId,
      "purpose": purpose.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [chat_id]: Identifier of the chat
  /// * [purpose]: Purpose of the transaction
  @override
  StarTransactionPartnerChannel copyWith({
    int? chatId,
    ChannelTransactionPurpose? purpose,
  }) =>
      StarTransactionPartnerChannel(
        chatId: chatId ?? this.chatId,
        purpose: purpose ?? this.purpose,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerChannel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerUser** *(starTransactionPartnerUser)* - child of StarTransactionPartner
///
/// The transaction is a gift of Telegram Stars from another user.
///
/// * [userId]: Identifier of the user; 0 if the gift was anonymous.
/// * [sticker]: A sticker to be shown in the transaction information; may be null if unknown *(optional)*.
final class StarTransactionPartnerUser extends StarTransactionPartner {
  /// **StarTransactionPartnerUser** *(starTransactionPartnerUser)* - child of StarTransactionPartner
  ///
  /// The transaction is a gift of Telegram Stars from another user.
  ///
  /// * [userId]: Identifier of the user; 0 if the gift was anonymous.
  /// * [sticker]: A sticker to be shown in the transaction information; may be null if unknown *(optional)*.
  const StarTransactionPartnerUser({
    required this.userId,
    this.sticker,
  });

  /// Identifier of the user; 0 if the gift was anonymous
  final int userId;

  /// A sticker to be shown in the transaction information; may be null if unknown
  final Sticker? sticker;

  /// Parse from a json
  factory StarTransactionPartnerUser.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerUser(
        userId: json['user_id'],
        sticker:
            json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "sticker": sticker?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user; 0 if the gift was anonymous
  /// * [sticker]: A sticker to be shown in the transaction information; may be null if unknown
  @override
  StarTransactionPartnerUser copyWith({
    int? userId,
    Sticker? sticker,
  }) =>
      StarTransactionPartnerUser(
        userId: userId ?? this.userId,
        sticker: sticker ?? this.sticker,
      );

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionPartnerUnsupported** *(starTransactionPartnerUnsupported)* - child of StarTransactionPartner
///
/// The transaction is a transaction with unknown partner.
final class StarTransactionPartnerUnsupported extends StarTransactionPartner {
  /// **StarTransactionPartnerUnsupported** *(starTransactionPartnerUnsupported)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with unknown partner.
  const StarTransactionPartnerUnsupported();

  /// Parse from a json
  factory StarTransactionPartnerUnsupported.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionPartnerUnsupported();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionPartnerUnsupported copyWith() =>
      const StarTransactionPartnerUnsupported();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionPartnerUnsupported';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
