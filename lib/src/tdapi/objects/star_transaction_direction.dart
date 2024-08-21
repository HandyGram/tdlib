part of '../tdapi.dart';

/// **StarTransactionDirection** *(starTransactionDirection)* - parent
///
/// Describes direction of a transaction with Telegram Stars.
sealed class StarTransactionDirection extends TdObject {
  /// **StarTransactionDirection** *(starTransactionDirection)* - parent
  ///
  /// Describes direction of a transaction with Telegram Stars.
  const StarTransactionDirection();

  /// a StarTransactionDirection return type can be :
  /// * [StarTransactionDirectionIncoming]
  /// * [StarTransactionDirectionOutgoing]
  factory StarTransactionDirection.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case StarTransactionDirectionIncoming.defaultObjectId:
        return StarTransactionDirectionIncoming.fromJson(json);
      case StarTransactionDirectionOutgoing.defaultObjectId:
        return StarTransactionDirectionOutgoing.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StarTransactionDirection)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  StarTransactionDirection copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionDirection';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionDirectionIncoming** *(starTransactionDirectionIncoming)* - child of StarTransactionDirection
///
/// The transaction is incoming and increases the number of owned Telegram Stars.
final class StarTransactionDirectionIncoming extends StarTransactionDirection {
  /// **StarTransactionDirectionIncoming** *(starTransactionDirectionIncoming)* - child of StarTransactionDirection
  ///
  /// The transaction is incoming and increases the number of owned Telegram Stars.
  const StarTransactionDirectionIncoming();

  /// Parse from a json
  factory StarTransactionDirectionIncoming.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionDirectionIncoming();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionDirectionIncoming copyWith() =>
      const StarTransactionDirectionIncoming();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionDirectionIncoming';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **StarTransactionDirectionOutgoing** *(starTransactionDirectionOutgoing)* - child of StarTransactionDirection
///
/// The transaction is outgoing and decreases the number of owned Telegram Stars.
final class StarTransactionDirectionOutgoing extends StarTransactionDirection {
  /// **StarTransactionDirectionOutgoing** *(starTransactionDirectionOutgoing)* - child of StarTransactionDirection
  ///
  /// The transaction is outgoing and decreases the number of owned Telegram Stars.
  const StarTransactionDirectionOutgoing();

  /// Parse from a json
  factory StarTransactionDirectionOutgoing.fromJson(
          Map<String, dynamic> json) =>
      const StarTransactionDirectionOutgoing();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  StarTransactionDirectionOutgoing copyWith() =>
      const StarTransactionDirectionOutgoing();

  /// TDLib object type
  static const String defaultObjectId = 'starTransactionDirectionOutgoing';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
