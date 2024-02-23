part of '../tdapi.dart';

/// **PingProxy** *(pingProxy)* - TDLib function
///
/// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
///
/// * [proxyId]: Proxy identifier. Use 0 to ping a Telegram server without a proxy.
///
/// [Seconds] is returned on completion.
final class PingProxy extends TdFunction {
  
  /// **PingProxy** *(pingProxy)* - TDLib function
  ///
  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization.
  ///
  /// * [proxyId]: Proxy identifier. Use 0 to ping a Telegram server without a proxy.
  ///
  /// [Seconds] is returned on completion.
  const PingProxy({
    required this.proxyId,
  });
  
  /// Proxy identifier. Use 0 to ping a Telegram server without a proxy
  final int proxyId;
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": defaultObjectId,
      "proxy_id": proxyId,
      "@extra": extra,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [proxy_id]: Proxy identifier. Use 0 to ping a Telegram server without a proxy
  PingProxy copyWith({
    int? proxyId,
  }) => PingProxy(
    proxyId: proxyId ?? this.proxyId,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pingProxy';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
