part of '../tdapi.dart';

/// **FilePart** *(filePart)* - basic class
///
/// Contains a part of a file.
///
/// * [data]: File bytes.
final class FilePart extends TdObject {
  
  /// **FilePart** *(filePart)* - basic class
  ///
  /// Contains a part of a file.
  ///
  /// * [data]: File bytes.
  const FilePart({
    required this.data,
    this.extra,
    this.clientId,
  });
  
  /// File bytes
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory FilePart.fromJson(Map<String, dynamic> json) => FilePart(
    data: json['data'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "data": data,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [data]: File bytes
  FilePart copyWith({
    String? data,
    dynamic extra,
    int? clientId,
  }) => FilePart(
    data: data ?? this.data,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'filePart';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
