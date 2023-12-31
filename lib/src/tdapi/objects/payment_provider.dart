part of '../tdapi.dart';

/// **PaymentProvider** *(paymentProvider)* - parent
///
/// Contains information about a payment provider.
sealed class PaymentProvider extends TdObject {
  
  /// **PaymentProvider** *(paymentProvider)* - parent
  ///
  /// Contains information about a payment provider.
  const PaymentProvider();
  
  /// a PaymentProvider return type can be :
  /// * [PaymentProviderSmartGlocal]
  /// * [PaymentProviderStripe]
  /// * [PaymentProviderOther]
  factory PaymentProvider.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaymentProviderSmartGlocal.objectType:
        return PaymentProviderSmartGlocal.fromJson(json);
      case PaymentProviderStripe.objectType:
        return PaymentProviderStripe.fromJson(json);
      case PaymentProviderOther.objectType:
        return PaymentProviderOther.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PaymentProvider)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PaymentProvider copyWith();

  /// TDLib object type
  static const String objectType = 'paymentProvider';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PaymentProviderSmartGlocal** *(paymentProviderSmartGlocal)* - child of PaymentProvider
///
/// Smart Glocal payment provider.
///
/// * [publicToken]: Public payment token.
final class PaymentProviderSmartGlocal extends PaymentProvider {
  
  /// **PaymentProviderSmartGlocal** *(paymentProviderSmartGlocal)* - child of PaymentProvider
  ///
  /// Smart Glocal payment provider.
  ///
  /// * [publicToken]: Public payment token.
  const PaymentProviderSmartGlocal({
    required this.publicToken,
  });
  
  /// Public payment token
  final String publicToken;
  
  /// Parse from a json
  factory PaymentProviderSmartGlocal.fromJson(Map<String, dynamic> json) => PaymentProviderSmartGlocal(
    publicToken: json['public_token'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "public_token": publicToken,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [public_token]: Public payment token
  @override
  PaymentProviderSmartGlocal copyWith({
    String? publicToken,
  }) => PaymentProviderSmartGlocal(
    publicToken: publicToken ?? this.publicToken,
  );

  /// TDLib object type
  static const String objectType = 'paymentProviderSmartGlocal';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PaymentProviderStripe** *(paymentProviderStripe)* - child of PaymentProvider
///
/// Stripe payment provider.
///
/// * [publishableKey]: Stripe API publishable key.
/// * [needCountry]: True, if the user country must be provided.
/// * [needPostalCode]: True, if the user ZIP/postal code must be provided.
/// * [needCardholderName]: True, if the cardholder name must be provided.
final class PaymentProviderStripe extends PaymentProvider {
  
  /// **PaymentProviderStripe** *(paymentProviderStripe)* - child of PaymentProvider
  ///
  /// Stripe payment provider.
  ///
  /// * [publishableKey]: Stripe API publishable key.
  /// * [needCountry]: True, if the user country must be provided.
  /// * [needPostalCode]: True, if the user ZIP/postal code must be provided.
  /// * [needCardholderName]: True, if the cardholder name must be provided.
  const PaymentProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });
  
  /// Stripe API publishable key
  final String publishableKey;

  /// True, if the user country must be provided
  final bool needCountry;

  /// True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// True, if the cardholder name must be provided
  final bool needCardholderName;
  
  /// Parse from a json
  factory PaymentProviderStripe.fromJson(Map<String, dynamic> json) => PaymentProviderStripe(
    publishableKey: json['publishable_key'],
    needCountry: json['need_country'],
    needPostalCode: json['need_postal_code'],
    needCardholderName: json['need_cardholder_name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "publishable_key": publishableKey,
      "need_country": needCountry,
      "need_postal_code": needPostalCode,
      "need_cardholder_name": needCardholderName,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [publishable_key]: Stripe API publishable key
  /// * [need_country]: True, if the user country must be provided
  /// * [need_postal_code]: True, if the user ZIP/postal code must be provided
  /// * [need_cardholder_name]: True, if the cardholder name must be provided
  @override
  PaymentProviderStripe copyWith({
    String? publishableKey,
    bool? needCountry,
    bool? needPostalCode,
    bool? needCardholderName,
  }) => PaymentProviderStripe(
    publishableKey: publishableKey ?? this.publishableKey,
    needCountry: needCountry ?? this.needCountry,
    needPostalCode: needPostalCode ?? this.needPostalCode,
    needCardholderName: needCardholderName ?? this.needCardholderName,
  );

  /// TDLib object type
  static const String objectType = 'paymentProviderStripe';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **PaymentProviderOther** *(paymentProviderOther)* - child of PaymentProvider
///
/// Some other payment provider, for which a web payment form must be shown.
///
/// * [url]: Payment form URL.
final class PaymentProviderOther extends PaymentProvider {
  
  /// **PaymentProviderOther** *(paymentProviderOther)* - child of PaymentProvider
  ///
  /// Some other payment provider, for which a web payment form must be shown.
  ///
  /// * [url]: Payment form URL.
  const PaymentProviderOther({
    required this.url,
  });
  
  /// Payment form URL
  final String url;
  
  /// Parse from a json
  factory PaymentProviderOther.fromJson(Map<String, dynamic> json) => PaymentProviderOther(
    url: json['url'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: Payment form URL
  @override
  PaymentProviderOther copyWith({
    String? url,
  }) => PaymentProviderOther(
    url: url ?? this.url,
  );

  /// TDLib object type
  static const String objectType = 'paymentProviderOther';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
