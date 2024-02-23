part of '../tdapi.dart';

/// **BotCommand** *(botCommand)* - basic class
///
/// Represents a command supported by a bot.
///
/// * [command]: Text of the bot command.
/// * [description]: Description of the bot command.
final class BotCommand extends TdObject {
  
  /// **BotCommand** *(botCommand)* - basic class
  ///
  /// Represents a command supported by a bot.
  ///
  /// * [command]: Text of the bot command.
  /// * [description]: Description of the bot command.
  const BotCommand({
    required this.command,
    required this.description,
  });
  
  /// Text of the bot command 
  final String command;

  /// Description of the bot command
  final String description;
  
  /// Parse from a json
  factory BotCommand.fromJson(Map<String, dynamic> json) => BotCommand(
    command: json['command'],
    description: json['description'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "command": command,
      "description": description,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [command]: Text of the bot command 
  /// * [description]: Description of the bot command
  BotCommand copyWith({
    String? command,
    String? description,
  }) => BotCommand(
    command: command ?? this.command,
    description: description ?? this.description,
  );

  /// TDLib object type
  static const String defaultObjectId = 'botCommand';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
