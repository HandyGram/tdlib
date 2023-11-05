part of '../tdapi.dart';

/// **EditProxy** *(editProxy)* - TDLib function
///
/// Edits an existing proxy server for network requests. Can be called before authorization.
///
/// * [proxyId]: Proxy identifier.
/// * [server]: Proxy server domain or IP address.
/// * [port]: Proxy server port.
/// * [enable]: Pass true to immediately enable the proxy.
/// * [type]: Proxy type.
///
/// [Proxy] is returned on completion.
final class EditProxy extends TdFunction {
  
  /// **EditProxy** *(editProxy)* - TDLib function
  ///
  /// Edits an existing proxy server for network requests. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier.
  /// * [server]: Proxy server domain or IP address.
  /// * [port]: Proxy server port.
  /// * [enable]: Pass true to immediately enable the proxy.
  /// * [type]: Proxy type.
  ///
  /// [Proxy] is returned on completion.
  const EditProxy({
    required this.proxyId,
    required this.server,
    required this.port,
    required this.enable,
    required this.type,
  });
  
  /// Proxy identifier
  final int proxyId;

  /// Proxy server domain or IP address
  final String server;

  /// Proxy server port
  final int port;

  /// Pass true to immediately enable the proxy
  final bool enable;

  /// Proxy type
  final ProxyType type;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "proxy_id": proxyId,
      "server": server,
      "port": port,
      "enable": enable,
      "type": type.toJson(),
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [proxy_id]: Proxy identifier
  /// * [server]: Proxy server domain or IP address
  /// * [port]: Proxy server port
  /// * [enable]: Pass true to immediately enable the proxy
  /// * [type]: Proxy type
  EditProxy copyWith({
    int? proxyId,
    String? server,
    int? port,
    bool? enable,
    ProxyType? type,
  }) => EditProxy(
    proxyId: proxyId ?? this.proxyId,
    server: server ?? this.server,
    port: port ?? this.port,
    enable: enable ?? this.enable,
    type: type ?? this.type,
  );

  /// TDLib object type
  static const String objectType = 'editProxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
