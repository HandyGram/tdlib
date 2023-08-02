part of '../tdapi.dart';

/// **ChatAction** *(chatAction)* - parent
///
/// Describes the different types of activity in a chat.
sealed class ChatAction extends TdObject {
  
  /// **ChatAction** *(chatAction)* - parent
  ///
  /// Describes the different types of activity in a chat.
  const ChatAction();
  
  /// a ChatAction return type can be :
  /// * [ChatActionTyping]
  /// * [ChatActionRecordingVideo]
  /// * [ChatActionUploadingVideo]
  /// * [ChatActionRecordingVoiceNote]
  /// * [ChatActionUploadingVoiceNote]
  /// * [ChatActionUploadingPhoto]
  /// * [ChatActionUploadingDocument]
  /// * [ChatActionChoosingSticker]
  /// * [ChatActionChoosingLocation]
  /// * [ChatActionChoosingContact]
  /// * [ChatActionStartPlayingGame]
  /// * [ChatActionRecordingVideoNote]
  /// * [ChatActionUploadingVideoNote]
  /// * [ChatActionWatchingAnimations]
  /// * [ChatActionCancel]
  factory ChatAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case ChatActionTyping.objectType:
        return ChatActionTyping.fromJson(json);
      case ChatActionRecordingVideo.objectType:
        return ChatActionRecordingVideo.fromJson(json);
      case ChatActionUploadingVideo.objectType:
        return ChatActionUploadingVideo.fromJson(json);
      case ChatActionRecordingVoiceNote.objectType:
        return ChatActionRecordingVoiceNote.fromJson(json);
      case ChatActionUploadingVoiceNote.objectType:
        return ChatActionUploadingVoiceNote.fromJson(json);
      case ChatActionUploadingPhoto.objectType:
        return ChatActionUploadingPhoto.fromJson(json);
      case ChatActionUploadingDocument.objectType:
        return ChatActionUploadingDocument.fromJson(json);
      case ChatActionChoosingSticker.objectType:
        return ChatActionChoosingSticker.fromJson(json);
      case ChatActionChoosingLocation.objectType:
        return ChatActionChoosingLocation.fromJson(json);
      case ChatActionChoosingContact.objectType:
        return ChatActionChoosingContact.fromJson(json);
      case ChatActionStartPlayingGame.objectType:
        return ChatActionStartPlayingGame.fromJson(json);
      case ChatActionRecordingVideoNote.objectType:
        return ChatActionRecordingVideoNote.fromJson(json);
      case ChatActionUploadingVideoNote.objectType:
        return ChatActionUploadingVideoNote.fromJson(json);
      case ChatActionWatchingAnimations.objectType:
        return ChatActionWatchingAnimations.fromJson(json);
      case ChatActionCancel.objectType:
        return ChatActionCancel.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of ChatAction)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  ChatAction copyWith();

  /// TDLib object type
  static const String objectType = 'chatAction';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
///
/// The user is typing a message.
final class ChatActionTyping extends ChatAction {
  
  /// **ChatActionTyping** *(chatActionTyping)* - child of ChatAction
  ///
  /// The user is typing a message.
  const ChatActionTyping();
  
  /// Parse from a json
  factory ChatActionTyping.fromJson(Map<String, dynamic> json) => const ChatActionTyping();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionTyping copyWith() => const ChatActionTyping();

  /// TDLib object type
  static const String objectType = 'chatActionTyping';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
///
/// The user is recording a video.
final class ChatActionRecordingVideo extends ChatAction {
  
  /// **ChatActionRecordingVideo** *(chatActionRecordingVideo)* - child of ChatAction
  ///
  /// The user is recording a video.
  const ChatActionRecordingVideo();
  
  /// Parse from a json
  factory ChatActionRecordingVideo.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideo();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionRecordingVideo copyWith() => const ChatActionRecordingVideo();

  /// TDLib object type
  static const String objectType = 'chatActionRecordingVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVideo** *(chatActionUploadingVideo)* - child of ChatAction
///
/// The user is uploading a video.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVideo extends ChatAction {
  
  /// **ChatActionUploadingVideo** *(chatActionUploadingVideo)* - child of ChatAction
  ///
  /// The user is uploading a video.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVideo({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideo(
    progress: json['progress'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [progress]: Upload progress, as a percentage
  @override
  ChatActionUploadingVideo copyWith({
    int? progress,
  }) => ChatActionUploadingVideo(
    progress: progress ?? this.progress,
  );

  /// TDLib object type
  static const String objectType = 'chatActionUploadingVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
///
/// The user is recording a voice note.
final class ChatActionRecordingVoiceNote extends ChatAction {
  
  /// **ChatActionRecordingVoiceNote** *(chatActionRecordingVoiceNote)* - child of ChatAction
  ///
  /// The user is recording a voice note.
  const ChatActionRecordingVoiceNote();
  
  /// Parse from a json
  factory ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVoiceNote();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionRecordingVoiceNote copyWith() => const ChatActionRecordingVoiceNote();

  /// TDLib object type
  static const String objectType = 'chatActionRecordingVoiceNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVoiceNote** *(chatActionUploadingVoiceNote)* - child of ChatAction
///
/// The user is uploading a voice note.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVoiceNote extends ChatAction {
  
  /// **ChatActionUploadingVoiceNote** *(chatActionUploadingVoiceNote)* - child of ChatAction
  ///
  /// The user is uploading a voice note.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVoiceNote({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVoiceNote(
    progress: json['progress'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [progress]: Upload progress, as a percentage
  @override
  ChatActionUploadingVoiceNote copyWith({
    int? progress,
  }) => ChatActionUploadingVoiceNote(
    progress: progress ?? this.progress,
  );

  /// TDLib object type
  static const String objectType = 'chatActionUploadingVoiceNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingPhoto** *(chatActionUploadingPhoto)* - child of ChatAction
///
/// The user is uploading a photo.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingPhoto extends ChatAction {
  
  /// **ChatActionUploadingPhoto** *(chatActionUploadingPhoto)* - child of ChatAction
  ///
  /// The user is uploading a photo.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingPhoto({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) => ChatActionUploadingPhoto(
    progress: json['progress'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [progress]: Upload progress, as a percentage
  @override
  ChatActionUploadingPhoto copyWith({
    int? progress,
  }) => ChatActionUploadingPhoto(
    progress: progress ?? this.progress,
  );

  /// TDLib object type
  static const String objectType = 'chatActionUploadingPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingDocument** *(chatActionUploadingDocument)* - child of ChatAction
///
/// The user is uploading a document.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingDocument extends ChatAction {
  
  /// **ChatActionUploadingDocument** *(chatActionUploadingDocument)* - child of ChatAction
  ///
  /// The user is uploading a document.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingDocument({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) => ChatActionUploadingDocument(
    progress: json['progress'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [progress]: Upload progress, as a percentage
  @override
  ChatActionUploadingDocument copyWith({
    int? progress,
  }) => ChatActionUploadingDocument(
    progress: progress ?? this.progress,
  );

  /// TDLib object type
  static const String objectType = 'chatActionUploadingDocument';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
///
/// The user is picking a sticker to send.
final class ChatActionChoosingSticker extends ChatAction {
  
  /// **ChatActionChoosingSticker** *(chatActionChoosingSticker)* - child of ChatAction
  ///
  /// The user is picking a sticker to send.
  const ChatActionChoosingSticker();
  
  /// Parse from a json
  factory ChatActionChoosingSticker.fromJson(Map<String, dynamic> json) => const ChatActionChoosingSticker();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionChoosingSticker copyWith() => const ChatActionChoosingSticker();

  /// TDLib object type
  static const String objectType = 'chatActionChoosingSticker';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
///
/// The user is picking a location or venue to send.
final class ChatActionChoosingLocation extends ChatAction {
  
  /// **ChatActionChoosingLocation** *(chatActionChoosingLocation)* - child of ChatAction
  ///
  /// The user is picking a location or venue to send.
  const ChatActionChoosingLocation();
  
  /// Parse from a json
  factory ChatActionChoosingLocation.fromJson(Map<String, dynamic> json) => const ChatActionChoosingLocation();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionChoosingLocation copyWith() => const ChatActionChoosingLocation();

  /// TDLib object type
  static const String objectType = 'chatActionChoosingLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
///
/// The user is picking a contact to send.
final class ChatActionChoosingContact extends ChatAction {
  
  /// **ChatActionChoosingContact** *(chatActionChoosingContact)* - child of ChatAction
  ///
  /// The user is picking a contact to send.
  const ChatActionChoosingContact();
  
  /// Parse from a json
  factory ChatActionChoosingContact.fromJson(Map<String, dynamic> json) => const ChatActionChoosingContact();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionChoosingContact copyWith() => const ChatActionChoosingContact();

  /// TDLib object type
  static const String objectType = 'chatActionChoosingContact';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
///
/// The user has started to play a game.
final class ChatActionStartPlayingGame extends ChatAction {
  
  /// **ChatActionStartPlayingGame** *(chatActionStartPlayingGame)* - child of ChatAction
  ///
  /// The user has started to play a game.
  const ChatActionStartPlayingGame();
  
  /// Parse from a json
  factory ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json) => const ChatActionStartPlayingGame();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionStartPlayingGame copyWith() => const ChatActionStartPlayingGame();

  /// TDLib object type
  static const String objectType = 'chatActionStartPlayingGame';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
///
/// The user is recording a video note.
final class ChatActionRecordingVideoNote extends ChatAction {
  
  /// **ChatActionRecordingVideoNote** *(chatActionRecordingVideoNote)* - child of ChatAction
  ///
  /// The user is recording a video note.
  const ChatActionRecordingVideoNote();
  
  /// Parse from a json
  factory ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json) => const ChatActionRecordingVideoNote();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionRecordingVideoNote copyWith() => const ChatActionRecordingVideoNote();

  /// TDLib object type
  static const String objectType = 'chatActionRecordingVideoNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionUploadingVideoNote** *(chatActionUploadingVideoNote)* - child of ChatAction
///
/// The user is uploading a video note.
///
/// * [progress]: Upload progress, as a percentage.
final class ChatActionUploadingVideoNote extends ChatAction {
  
  /// **ChatActionUploadingVideoNote** *(chatActionUploadingVideoNote)* - child of ChatAction
  ///
  /// The user is uploading a video note.
  ///
  /// * [progress]: Upload progress, as a percentage.
  const ChatActionUploadingVideoNote({
    required this.progress,
  });
  
  /// Upload progress, as a percentage
  final int progress;
  
  /// Parse from a json
  factory ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) => ChatActionUploadingVideoNote(
    progress: json['progress'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "progress": progress,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [progress]: Upload progress, as a percentage
  @override
  ChatActionUploadingVideoNote copyWith({
    int? progress,
  }) => ChatActionUploadingVideoNote(
    progress: progress ?? this.progress,
  );

  /// TDLib object type
  static const String objectType = 'chatActionUploadingVideoNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionWatchingAnimations** *(chatActionWatchingAnimations)* - child of ChatAction
///
/// The user is watching animations sent by the other party by clicking on an animated emoji.
///
/// * [emoji]: The animated emoji.
final class ChatActionWatchingAnimations extends ChatAction {
  
  /// **ChatActionWatchingAnimations** *(chatActionWatchingAnimations)* - child of ChatAction
  ///
  /// The user is watching animations sent by the other party by clicking on an animated emoji.
  ///
  /// * [emoji]: The animated emoji.
  const ChatActionWatchingAnimations({
    required this.emoji,
  });
  
  /// The animated emoji
  final String emoji;
  
  /// Parse from a json
  factory ChatActionWatchingAnimations.fromJson(Map<String, dynamic> json) => ChatActionWatchingAnimations(
    emoji: json['emoji'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "emoji": emoji,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [emoji]: The animated emoji
  @override
  ChatActionWatchingAnimations copyWith({
    String? emoji,
  }) => ChatActionWatchingAnimations(
    emoji: emoji ?? this.emoji,
  );

  /// TDLib object type
  static const String objectType = 'chatActionWatchingAnimations';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}


/// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
///
/// The user has canceled the previous action.
final class ChatActionCancel extends ChatAction {
  
  /// **ChatActionCancel** *(chatActionCancel)* - child of ChatAction
  ///
  /// The user has canceled the previous action.
  const ChatActionCancel();
  
  /// Parse from a json
  factory ChatActionCancel.fromJson(Map<String, dynamic> json) => const ChatActionCancel();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  /// Copy instance with no modifications.
  @override
  ChatActionCancel copyWith() => const ChatActionCancel();

  /// TDLib object type
  static const String objectType = 'chatActionCancel';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get instanceType => objectType;
}
