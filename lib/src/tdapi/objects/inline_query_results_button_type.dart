part of '../tdapi.dart';

/// **InlineQueryResultsButtonType** *(inlineQueryResultsButtonType)* - parent
///
/// Represents a type of a button in results of inline query.
sealed class InlineQueryResultsButtonType extends TdObject {
  
  /// **InlineQueryResultsButtonType** *(inlineQueryResultsButtonType)* - parent
  ///
  /// Represents a type of a button in results of inline query.
  const InlineQueryResultsButtonType();
  
  /// a InlineQueryResultsButtonType return type can be :
  /// * [InlineQueryResultsButtonTypeStartBot]
  /// * [InlineQueryResultsButtonTypeWebApp]
  factory InlineQueryResultsButtonType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineQueryResultsButtonTypeStartBot.objectType:
        return InlineQueryResultsButtonTypeStartBot.fromJson(json);
      case InlineQueryResultsButtonTypeWebApp.objectType:
        return InlineQueryResultsButtonTypeWebApp.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InlineQueryResultsButtonType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InlineQueryResultsButtonType copyWith();

  static const String objectType = 'inlineQueryResultsButtonType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineQueryResultsButtonTypeStartBot** *(inlineQueryResultsButtonTypeStartBot)* - child of InlineQueryResultsButtonType
///
/// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter.
///
/// * [parameter]: The parameter for the bot start message.
final class InlineQueryResultsButtonTypeStartBot extends InlineQueryResultsButtonType {
  
  /// **InlineQueryResultsButtonTypeStartBot** *(inlineQueryResultsButtonTypeStartBot)* - child of InlineQueryResultsButtonType
  ///
  /// Describes the button that opens a private chat with the bot and sends a start message to the bot with the given parameter.
  ///
  /// * [parameter]: The parameter for the bot start message.
  const InlineQueryResultsButtonTypeStartBot({
    required this.parameter,
  });
  
  /// The parameter for the bot start message
  final String parameter;
  
  /// Parse from a json
  factory InlineQueryResultsButtonTypeStartBot.fromJson(Map<String, dynamic> json) => InlineQueryResultsButtonTypeStartBot(
    parameter: json['parameter'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "parameter": parameter,
		};
	}

  
  @override
  InlineQueryResultsButtonTypeStartBot copyWith({
    String? parameter,
  }) => InlineQueryResultsButtonTypeStartBot(
    parameter: parameter ?? this.parameter,
  );

  static const String objectType = 'inlineQueryResultsButtonTypeStartBot';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InlineQueryResultsButtonTypeWebApp** *(inlineQueryResultsButtonTypeWebApp)* - child of InlineQueryResultsButtonType
///
/// Describes the button that opens a Web App by calling getWebAppUrl.
///
/// * [url]: An HTTP URL to pass to getWebAppUrl.
final class InlineQueryResultsButtonTypeWebApp extends InlineQueryResultsButtonType {
  
  /// **InlineQueryResultsButtonTypeWebApp** *(inlineQueryResultsButtonTypeWebApp)* - child of InlineQueryResultsButtonType
  ///
  /// Describes the button that opens a Web App by calling getWebAppUrl.
  ///
  /// * [url]: An HTTP URL to pass to getWebAppUrl.
  const InlineQueryResultsButtonTypeWebApp({
    required this.url,
  });
  
  /// An HTTP URL to pass to getWebAppUrl
  final String url;
  
  /// Parse from a json
  factory InlineQueryResultsButtonTypeWebApp.fromJson(Map<String, dynamic> json) => InlineQueryResultsButtonTypeWebApp(
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  InlineQueryResultsButtonTypeWebApp copyWith({
    String? url,
  }) => InlineQueryResultsButtonTypeWebApp(
    url: url ?? this.url,
  );

  static const String objectType = 'inlineQueryResultsButtonTypeWebApp';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
