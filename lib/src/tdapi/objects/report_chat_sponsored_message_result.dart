part of '../tdapi.dart';

/// **ReportChatSponsoredMessageResult** *(reportChatSponsoredMessageResult)* - parent
///
/// Describes result of sponsored message report.
sealed class ReportChatSponsoredMessageResult extends TdObject {
  /// **ReportChatSponsoredMessageResult** *(reportChatSponsoredMessageResult)* - parent
  ///
  /// Describes result of sponsored message report.
  const ReportChatSponsoredMessageResult();

  /// a ReportChatSponsoredMessageResult return type can be :
  /// * [ReportChatSponsoredMessageResultOk]
  /// * [ReportChatSponsoredMessageResultFailed]
  /// * [ReportChatSponsoredMessageResultOptionRequired]
  /// * [ReportChatSponsoredMessageResultAdsHidden]
  /// * [ReportChatSponsoredMessageResultPremiumRequired]
  factory ReportChatSponsoredMessageResult.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ReportChatSponsoredMessageResultOk.defaultObjectId:
        return ReportChatSponsoredMessageResultOk.fromJson(json);
      case ReportChatSponsoredMessageResultFailed.defaultObjectId:
        return ReportChatSponsoredMessageResultFailed.fromJson(json);
      case ReportChatSponsoredMessageResultOptionRequired.defaultObjectId:
        return ReportChatSponsoredMessageResultOptionRequired.fromJson(json);
      case ReportChatSponsoredMessageResultAdsHidden.defaultObjectId:
        return ReportChatSponsoredMessageResultAdsHidden.fromJson(json);
      case ReportChatSponsoredMessageResultPremiumRequired.defaultObjectId:
        return ReportChatSponsoredMessageResultPremiumRequired.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ReportChatSponsoredMessageResult)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ReportChatSponsoredMessageResult copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'reportChatSponsoredMessageResult';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ReportChatSponsoredMessageResultOk** *(reportChatSponsoredMessageResultOk)* - child of ReportChatSponsoredMessageResult
///
/// The message was reported successfully.
final class ReportChatSponsoredMessageResultOk
    extends ReportChatSponsoredMessageResult {
  /// **ReportChatSponsoredMessageResultOk** *(reportChatSponsoredMessageResultOk)* - child of ReportChatSponsoredMessageResult
  ///
  /// The message was reported successfully.
  const ReportChatSponsoredMessageResultOk({
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
  factory ReportChatSponsoredMessageResultOk.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageResultOk(
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
  ReportChatSponsoredMessageResultOk copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      ReportChatSponsoredMessageResultOk(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId = 'reportChatSponsoredMessageResultOk';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ReportChatSponsoredMessageResultFailed** *(reportChatSponsoredMessageResultFailed)* - child of ReportChatSponsoredMessageResult
///
/// The sponsored message is too old or not found.
final class ReportChatSponsoredMessageResultFailed
    extends ReportChatSponsoredMessageResult {
  /// **ReportChatSponsoredMessageResultFailed** *(reportChatSponsoredMessageResultFailed)* - child of ReportChatSponsoredMessageResult
  ///
  /// The sponsored message is too old or not found.
  const ReportChatSponsoredMessageResultFailed({
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
  factory ReportChatSponsoredMessageResultFailed.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageResultFailed(
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
  ReportChatSponsoredMessageResultFailed copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      ReportChatSponsoredMessageResultFailed(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'reportChatSponsoredMessageResultFailed';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ReportChatSponsoredMessageResultOptionRequired** *(reportChatSponsoredMessageResultOptionRequired)* - child of ReportChatSponsoredMessageResult
///
/// The user must choose an option to report the message and repeat request with the chosen option.
///
/// * [title]: Title for the option choice.
/// * [options]: List of available options.
final class ReportChatSponsoredMessageResultOptionRequired
    extends ReportChatSponsoredMessageResult {
  /// **ReportChatSponsoredMessageResultOptionRequired** *(reportChatSponsoredMessageResultOptionRequired)* - child of ReportChatSponsoredMessageResult
  ///
  /// The user must choose an option to report the message and repeat request with the chosen option.
  ///
  /// * [title]: Title for the option choice.
  /// * [options]: List of available options.
  const ReportChatSponsoredMessageResultOptionRequired({
    required this.title,
    required this.options,
    this.extra,
    this.clientId,
  });

  /// Title for the option choice
  final String title;

  /// List of available options
  final List<ReportChatSponsoredMessageOption> options;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory ReportChatSponsoredMessageResultOptionRequired.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageResultOptionRequired(
        title: json['title'],
        options: List<ReportChatSponsoredMessageOption>.from(
            (json['options'] ?? [])
                .map((item) => ReportChatSponsoredMessageOption.fromJson(item))
                .toList()),
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
      "title": title,
      "options": options.map((i) => i.toJson()).toList(),
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Title for the option choice
  /// * [options]: List of available options
  @override
  ReportChatSponsoredMessageResultOptionRequired copyWith({
    String? title,
    List<ReportChatSponsoredMessageOption>? options,
    dynamic extra,
    int? clientId,
  }) =>
      ReportChatSponsoredMessageResultOptionRequired(
        title: title ?? this.title,
        options: options ?? this.options,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'reportChatSponsoredMessageResultOptionRequired';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ReportChatSponsoredMessageResultAdsHidden** *(reportChatSponsoredMessageResultAdsHidden)* - child of ReportChatSponsoredMessageResult
///
/// Sponsored messages were hidden for the user in all chats.
final class ReportChatSponsoredMessageResultAdsHidden
    extends ReportChatSponsoredMessageResult {
  /// **ReportChatSponsoredMessageResultAdsHidden** *(reportChatSponsoredMessageResultAdsHidden)* - child of ReportChatSponsoredMessageResult
  ///
  /// Sponsored messages were hidden for the user in all chats.
  const ReportChatSponsoredMessageResultAdsHidden({
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
  factory ReportChatSponsoredMessageResultAdsHidden.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageResultAdsHidden(
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
  ReportChatSponsoredMessageResultAdsHidden copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      ReportChatSponsoredMessageResultAdsHidden(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'reportChatSponsoredMessageResultAdsHidden';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **ReportChatSponsoredMessageResultPremiumRequired** *(reportChatSponsoredMessageResultPremiumRequired)* - child of ReportChatSponsoredMessageResult
///
/// The user asked to hide sponsored messages, but Telegram Premium is required for this.
final class ReportChatSponsoredMessageResultPremiumRequired
    extends ReportChatSponsoredMessageResult {
  /// **ReportChatSponsoredMessageResultPremiumRequired** *(reportChatSponsoredMessageResultPremiumRequired)* - child of ReportChatSponsoredMessageResult
  ///
  /// The user asked to hide sponsored messages, but Telegram Premium is required for this.
  const ReportChatSponsoredMessageResultPremiumRequired({
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
  factory ReportChatSponsoredMessageResultPremiumRequired.fromJson(
          Map<String, dynamic> json) =>
      ReportChatSponsoredMessageResultPremiumRequired(
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
  ReportChatSponsoredMessageResultPremiumRequired copyWith({
    dynamic extra,
    int? clientId,
  }) =>
      ReportChatSponsoredMessageResultPremiumRequired(
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

  /// TDLib object type
  static const String defaultObjectId =
      'reportChatSponsoredMessageResultPremiumRequired';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
