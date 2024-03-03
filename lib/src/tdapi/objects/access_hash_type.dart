part of '../tdapi.dart';

/// **AccessHashType** *(accessHashType)* - parent
///
/// Represents the type of an access hash. The following types are possible: user, channel.
sealed class AccessHashType extends TdObject {
  /// **AccessHashType** *(accessHashType)* - parent
  ///
  /// Represents the type of an access hash. The following types are possible: user, channel.
  const AccessHashType();

  /// a AccessHashType return type can be :
  /// * [AccessHashTypeUser]
  /// * [AccessHashTypeChannel]
  factory AccessHashType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case AccessHashTypeUser.defaultObjectId:
        return AccessHashTypeUser.fromJson(json);
      case AccessHashTypeChannel.defaultObjectId:
        return AccessHashTypeChannel.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of AccessHashType)",
          json,
        );
    }
  }

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  AccessHashType copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'accessHashType';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **AccessHashTypeUser** *(accessHashTypeUser)* - child of AccessHashType
///
/// An access hash of an user.
final class AccessHashTypeUser extends AccessHashType {
  /// **AccessHashTypeUser** *(accessHashTypeUser)* - child of AccessHashType
  ///
  /// An access hash of an user.
  const AccessHashTypeUser();

  /// Parse from a json
  factory AccessHashTypeUser.fromJson(Map<String, dynamic> json) =>
      const AccessHashTypeUser();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  AccessHashTypeUser copyWith() => const AccessHashTypeUser();

  /// TDLib object type
  static const String defaultObjectId = 'accessHashTypeUser';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}

/// **AccessHashTypeChannel** *(accessHashTypeChannel)* - child of AccessHashType
///
/// An access hash of a channel.
final class AccessHashTypeChannel extends AccessHashType {
  /// **AccessHashTypeChannel** *(accessHashTypeChannel)* - child of AccessHashType
  ///
  /// An access hash of a channel.
  const AccessHashTypeChannel();

  /// Parse from a json
  factory AccessHashTypeChannel.fromJson(Map<String, dynamic> json) =>
      const AccessHashTypeChannel();

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": defaultObjectId,
    };
  }

  /// Copy instance with no modifications.
  @override
  AccessHashTypeChannel copyWith() => const AccessHashTypeChannel();

  /// TDLib object type
  static const String defaultObjectId = 'accessHashTypeChannel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
