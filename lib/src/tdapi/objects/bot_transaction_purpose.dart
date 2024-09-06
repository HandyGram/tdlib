part of '../tdapi.dart';

/// **BotTransactionPurpose** *(botTransactionPurpose)* - parent
///
/// Describes purpose of a transaction with a bot.
sealed class BotTransactionPurpose extends TdObject {
  /// **BotTransactionPurpose** *(botTransactionPurpose)* - parent
  ///
  /// Describes purpose of a transaction with a bot.
  const BotTransactionPurpose();

  /// a BotTransactionPurpose return type can be :
  /// * [BotTransactionPurposePaidMedia]
  /// * [BotTransactionPurposeInvoicePayment]
  factory BotTransactionPurpose.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case BotTransactionPurposePaidMedia.defaultObjectId:
        return BotTransactionPurposePaidMedia.fromJson(json);
      case BotTransactionPurposeInvoicePayment.defaultObjectId:
        return BotTransactionPurposeInvoicePayment.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of BotTransactionPurpose)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  BotTransactionPurpose copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'botTransactionPurpose';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **BotTransactionPurposePaidMedia** *(botTransactionPurposePaidMedia)* - child of BotTransactionPurpose
///
/// Paid media were bought.
///
/// * [media]: The bought media if the trancastion wasn't refunded.
/// * [payload]: Bot-provided payload; for bots only.
final class BotTransactionPurposePaidMedia extends BotTransactionPurpose {
  /// **BotTransactionPurposePaidMedia** *(botTransactionPurposePaidMedia)* - child of BotTransactionPurpose
  ///
  /// Paid media were bought.
  ///
  /// * [media]: The bought media if the trancastion wasn't refunded.
  /// * [payload]: Bot-provided payload; for bots only.
  const BotTransactionPurposePaidMedia({
    required this.media,
    required this.payload,
  });

  /// The bought media if the trancastion wasn't refunded
  final List<PaidMedia> media;

  /// Bot-provided payload; for bots only
  final String payload;

  /// Parse from a json
  factory BotTransactionPurposePaidMedia.fromJson(Map<String, dynamic> json) =>
      BotTransactionPurposePaidMedia(
        media: List<PaidMedia>.from((json['media'] ?? [])
            .map((item) => PaidMedia.fromJson(item))
            .toList()),
        payload: json['payload'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "media": media.map((i) => i.toJson()).toList(),
      "payload": payload,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [media]: The bought media if the trancastion wasn't refunded
  /// * [payload]: Bot-provided payload; for bots only
  @override
  BotTransactionPurposePaidMedia copyWith({
    List<PaidMedia>? media,
    String? payload,
  }) =>
      BotTransactionPurposePaidMedia(
        media: media ?? this.media,
        payload: payload ?? this.payload,
      );

  /// TDLib object type
  static const String defaultObjectId = 'botTransactionPurposePaidMedia';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **BotTransactionPurposeInvoicePayment** *(botTransactionPurposeInvoicePayment)* - child of BotTransactionPurpose
///
/// User bought a product from the bot.
///
/// * [productInfo]: Information about the bought product; may be null if not applicable *(optional)*.
/// * [invoicePayload]: Invoice payload; for bots only.
final class BotTransactionPurposeInvoicePayment extends BotTransactionPurpose {
  /// **BotTransactionPurposeInvoicePayment** *(botTransactionPurposeInvoicePayment)* - child of BotTransactionPurpose
  ///
  /// User bought a product from the bot.
  ///
  /// * [productInfo]: Information about the bought product; may be null if not applicable *(optional)*.
  /// * [invoicePayload]: Invoice payload; for bots only.
  const BotTransactionPurposeInvoicePayment({
    this.productInfo,
    required this.invoicePayload,
  });

  /// Information about the bought product; may be null if not applicable
  final ProductInfo? productInfo;

  /// Invoice payload; for bots only
  final String invoicePayload;

  /// Parse from a json
  factory BotTransactionPurposeInvoicePayment.fromJson(
          Map<String, dynamic> json) =>
      BotTransactionPurposeInvoicePayment(
        productInfo: json['product_info'] == null
            ? null
            : ProductInfo.fromJson(json['product_info']),
        invoicePayload: json['invoice_payload'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "product_info": productInfo?.toJson(),
      "invoice_payload": invoicePayload,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [product_info]: Information about the bought product; may be null if not applicable
  /// * [invoice_payload]: Invoice payload; for bots only
  @override
  BotTransactionPurposeInvoicePayment copyWith({
    ProductInfo? productInfo,
    String? invoicePayload,
  }) =>
      BotTransactionPurposeInvoicePayment(
        productInfo: productInfo ?? this.productInfo,
        invoicePayload: invoicePayload ?? this.invoicePayload,
      );

  /// TDLib object type
  static const String defaultObjectId = 'botTransactionPurposeInvoicePayment';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
