part of '../tdapi.dart';

/// **RecommendedChatFolder** *(recommendedChatFolder)* - basic class
///
/// Describes a recommended chat folder.
///
/// * [folder]: The chat folder.
/// * [description]: Chat folder description.
final class RecommendedChatFolder extends TdObject {
  
  /// **RecommendedChatFolder** *(recommendedChatFolder)* - basic class
  ///
  /// Describes a recommended chat folder.
  ///
  /// * [folder]: The chat folder.
  /// * [description]: Chat folder description.
  const RecommendedChatFolder({
    required this.folder,
    required this.description,
  });
  
  /// The chat folder 
  final ChatFolder folder;

  /// Chat folder description
  final String description;
  
  /// Parse from a json
  factory RecommendedChatFolder.fromJson(Map<String, dynamic> json) => RecommendedChatFolder(
    folder: ChatFolder.fromJson(json['folder']),
    description: json['description'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "folder": folder.toJson(),
      "description": description,
		};
	}

  
  RecommendedChatFolder copyWith({
    ChatFolder? folder,
    String? description,
  }) => RecommendedChatFolder(
    folder: folder ?? this.folder,
    description: description ?? this.description,
  );

  static const String objectType = 'recommendedChatFolder';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
