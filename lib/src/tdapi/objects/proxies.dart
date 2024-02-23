part of '../tdapi.dart';

/// **Proxies** *(proxies)* - basic class
///
/// Represents a list of proxy servers.
///
/// * [proxies]: List of proxy servers.
final class Proxies extends TdObject {
  
  /// **Proxies** *(proxies)* - basic class
  ///
  /// Represents a list of proxy servers.
  ///
  /// * [proxies]: List of proxy servers.
  const Proxies({
    required this.proxies,
    this.extra,
    this.clientId,
  });
  
  /// List of proxy servers
  final List<Proxy> proxies;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Proxies.fromJson(Map<String, dynamic> json) => Proxies(
    proxies: List<Proxy>.from((json['proxies'] ?? []).map((item) => Proxy.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "proxies": proxies.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [proxies]: List of proxy servers
  Proxies copyWith({
    List<Proxy>? proxies,
    dynamic extra,
    int? clientId,
  }) => Proxies(
    proxies: proxies ?? this.proxies,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'proxies';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
