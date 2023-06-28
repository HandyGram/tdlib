part of '../tdapi.dart';

/// **InlineQueryResultsButton** *(inlineQueryResultsButton)* - basic class
///
/// Represents a button to be shown above inline query results.
///
/// * [text]: The text of the button.
/// * [type]: Type of the button.
final class InlineQueryResultsButton extends TdObject {
  
  /// **InlineQueryResultsButton** *(inlineQueryResultsButton)* - basic class
  ///
  /// Represents a button to be shown above inline query results.
  ///
  /// * [text]: The text of the button.
  /// * [type]: Type of the button.
  const InlineQueryResultsButton({
    required this.text,
    required this.type,
  });
  
  /// The text of the button 
  final String text;

  /// Type of the button
  final InlineQueryResultsButtonType type;
  
  /// Parse from a json
  factory InlineQueryResultsButton.fromJson(Map<String, dynamic> json) => InlineQueryResultsButton(
    text: json['text'],
    type: InlineQueryResultsButtonType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "type": type.toJson(),
		};
	}

  
  InlineQueryResultsButton copyWith({
    String? text,
    InlineQueryResultsButtonType? type,
  }) => InlineQueryResultsButton(
    text: text ?? this.text,
    type: type ?? this.type,
  );

  static const String objectType = 'inlineQueryResultsButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
