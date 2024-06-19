part of '../tdapi.dart';

/// **StarTransactionPartner** *(starTransactionPartner)* - parent
///
/// Describes source or recipient of a transaction with Telegram stars.
sealed class StarTransactionPartner extends TdObject {
  /// **StarTransactionPartner** *(starTransactionPartner)* - parent
  ///
  /// Describes source or recipient of a transaction with Telegram stars.
  const StarTransactionPartner();

  /// a StarTransactionPartner return type can be :
  /// * [StarTransactionPartnerTelegram]
  /// * [StarTransactionPartnerAppStore]
  /// * [StarTransactionPartnerGooglePlay]
  /// * [StarTransactionPartnerFragment]
  /// * [StarTransactionPartnerUser]
  /// * [StarTransactionPartnerChannel]
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
      case StarTransactionPartnerUser.defaultObjectId:
        return StarTransactionPartnerUser.fromJson(json);
      case StarTransactionPartnerChannel.defaultObjectId:
        return StarTransactionPartnerChannel.fromJson(json);
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

/// **StarTransactionPartnerUser** *(starTransactionPartnerUser)* - child of StarTransactionPartner
///
/// The transaction is a transaction with another user.
///
/// * [userId]: Identifier of the user.
/// * [productInfo]: Information about the bought product; may be null if none *(optional)*.
final class StarTransactionPartnerUser extends StarTransactionPartner {
  /// **StarTransactionPartnerUser** *(starTransactionPartnerUser)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with another user.
  ///
  /// * [userId]: Identifier of the user.
  /// * [productInfo]: Information about the bought product; may be null if none *(optional)*.
  const StarTransactionPartnerUser({
    required this.userId,
    this.productInfo,
  });

  /// Identifier of the user
  final int userId;

  /// Information about the bought product; may be null if none
  final ProductInfo? productInfo;

  /// Parse from a json
  factory StarTransactionPartnerUser.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerUser(
        userId: json['user_id'],
        productInfo: json['product_info'] == null
            ? null
            : ProductInfo.fromJson(json['product_info']),
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "user_id": userId,
      "product_info": productInfo?.toJson(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [user_id]: Identifier of the user
  /// * [product_info]: Information about the bought product; may be null if none
  @override
  StarTransactionPartnerUser copyWith({
    int? userId,
    ProductInfo? productInfo,
  }) =>
      StarTransactionPartnerUser(
        userId: userId ?? this.userId,
        productInfo: productInfo ?? this.productInfo,
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

/// **StarTransactionPartnerChannel** *(starTransactionPartnerChannel)* - child of StarTransactionPartner
///
/// The transaction is a transaction with a channel chat.
///
/// * [chatId]: Identifier of the chat.
final class StarTransactionPartnerChannel extends StarTransactionPartner {
  /// **StarTransactionPartnerChannel** *(starTransactionPartnerChannel)* - child of StarTransactionPartner
  ///
  /// The transaction is a transaction with a channel chat.
  ///
  /// * [chatId]: Identifier of the chat.
  const StarTransactionPartnerChannel({
    required this.chatId,
  });

  /// Identifier of the chat
  final int chatId;

  /// Parse from a json
  factory StarTransactionPartnerChannel.fromJson(Map<String, dynamic> json) =>
      StarTransactionPartnerChannel(
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
  /// * [chat_id]: Identifier of the chat
  @override
  StarTransactionPartnerChannel copyWith({
    int? chatId,
  }) =>
      StarTransactionPartnerChannel(
        chatId: chatId ?? this.chatId,
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
