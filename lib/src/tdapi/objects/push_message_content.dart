part of '../tdapi.dart';

/// **PushMessageContent** *(pushMessageContent)* - parent
///
/// Contains content of a push message notification.
sealed class PushMessageContent extends TdObject {
  
  /// **PushMessageContent** *(pushMessageContent)* - parent
  ///
  /// Contains content of a push message notification.
  const PushMessageContent();
  
  /// a PushMessageContent return type can be :
  /// * [PushMessageContentHidden]
  /// * [PushMessageContentAnimation]
  /// * [PushMessageContentAudio]
  /// * [PushMessageContentContact]
  /// * [PushMessageContentContactRegistered]
  /// * [PushMessageContentDocument]
  /// * [PushMessageContentGame]
  /// * [PushMessageContentGameScore]
  /// * [PushMessageContentInvoice]
  /// * [PushMessageContentLocation]
  /// * [PushMessageContentPhoto]
  /// * [PushMessageContentPoll]
  /// * [PushMessageContentPremiumGiftCode]
  /// * [PushMessageContentPremiumGiveaway]
  /// * [PushMessageContentScreenshotTaken]
  /// * [PushMessageContentSticker]
  /// * [PushMessageContentStory]
  /// * [PushMessageContentText]
  /// * [PushMessageContentVideo]
  /// * [PushMessageContentVideoNote]
  /// * [PushMessageContentVoiceNote]
  /// * [PushMessageContentBasicGroupChatCreate]
  /// * [PushMessageContentChatAddMembers]
  /// * [PushMessageContentChatChangePhoto]
  /// * [PushMessageContentChatChangeTitle]
  /// * [PushMessageContentChatSetBackground]
  /// * [PushMessageContentChatSetTheme]
  /// * [PushMessageContentChatDeleteMember]
  /// * [PushMessageContentChatJoinByLink]
  /// * [PushMessageContentChatJoinByRequest]
  /// * [PushMessageContentRecurringPayment]
  /// * [PushMessageContentSuggestProfilePhoto]
  /// * [PushMessageContentMessageForwards]
  /// * [PushMessageContentMediaAlbum]
  factory PushMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PushMessageContentHidden.defaultObjectId:
        return PushMessageContentHidden.fromJson(json);
      case PushMessageContentAnimation.defaultObjectId:
        return PushMessageContentAnimation.fromJson(json);
      case PushMessageContentAudio.defaultObjectId:
        return PushMessageContentAudio.fromJson(json);
      case PushMessageContentContact.defaultObjectId:
        return PushMessageContentContact.fromJson(json);
      case PushMessageContentContactRegistered.defaultObjectId:
        return PushMessageContentContactRegistered.fromJson(json);
      case PushMessageContentDocument.defaultObjectId:
        return PushMessageContentDocument.fromJson(json);
      case PushMessageContentGame.defaultObjectId:
        return PushMessageContentGame.fromJson(json);
      case PushMessageContentGameScore.defaultObjectId:
        return PushMessageContentGameScore.fromJson(json);
      case PushMessageContentInvoice.defaultObjectId:
        return PushMessageContentInvoice.fromJson(json);
      case PushMessageContentLocation.defaultObjectId:
        return PushMessageContentLocation.fromJson(json);
      case PushMessageContentPhoto.defaultObjectId:
        return PushMessageContentPhoto.fromJson(json);
      case PushMessageContentPoll.defaultObjectId:
        return PushMessageContentPoll.fromJson(json);
      case PushMessageContentPremiumGiftCode.defaultObjectId:
        return PushMessageContentPremiumGiftCode.fromJson(json);
      case PushMessageContentPremiumGiveaway.defaultObjectId:
        return PushMessageContentPremiumGiveaway.fromJson(json);
      case PushMessageContentScreenshotTaken.defaultObjectId:
        return PushMessageContentScreenshotTaken.fromJson(json);
      case PushMessageContentSticker.defaultObjectId:
        return PushMessageContentSticker.fromJson(json);
      case PushMessageContentStory.defaultObjectId:
        return PushMessageContentStory.fromJson(json);
      case PushMessageContentText.defaultObjectId:
        return PushMessageContentText.fromJson(json);
      case PushMessageContentVideo.defaultObjectId:
        return PushMessageContentVideo.fromJson(json);
      case PushMessageContentVideoNote.defaultObjectId:
        return PushMessageContentVideoNote.fromJson(json);
      case PushMessageContentVoiceNote.defaultObjectId:
        return PushMessageContentVoiceNote.fromJson(json);
      case PushMessageContentBasicGroupChatCreate.defaultObjectId:
        return PushMessageContentBasicGroupChatCreate.fromJson(json);
      case PushMessageContentChatAddMembers.defaultObjectId:
        return PushMessageContentChatAddMembers.fromJson(json);
      case PushMessageContentChatChangePhoto.defaultObjectId:
        return PushMessageContentChatChangePhoto.fromJson(json);
      case PushMessageContentChatChangeTitle.defaultObjectId:
        return PushMessageContentChatChangeTitle.fromJson(json);
      case PushMessageContentChatSetBackground.defaultObjectId:
        return PushMessageContentChatSetBackground.fromJson(json);
      case PushMessageContentChatSetTheme.defaultObjectId:
        return PushMessageContentChatSetTheme.fromJson(json);
      case PushMessageContentChatDeleteMember.defaultObjectId:
        return PushMessageContentChatDeleteMember.fromJson(json);
      case PushMessageContentChatJoinByLink.defaultObjectId:
        return PushMessageContentChatJoinByLink.fromJson(json);
      case PushMessageContentChatJoinByRequest.defaultObjectId:
        return PushMessageContentChatJoinByRequest.fromJson(json);
      case PushMessageContentRecurringPayment.defaultObjectId:
        return PushMessageContentRecurringPayment.fromJson(json);
      case PushMessageContentSuggestProfilePhoto.defaultObjectId:
        return PushMessageContentSuggestProfilePhoto.fromJson(json);
      case PushMessageContentMessageForwards.defaultObjectId:
        return PushMessageContentMessageForwards.fromJson(json);
      case PushMessageContentMediaAlbum.defaultObjectId:
        return PushMessageContentMediaAlbum.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PushMessageContent)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PushMessageContent copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContent';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentHidden** *(pushMessageContentHidden)* - child of PushMessageContent
///
/// A general message with hidden content.
///
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentHidden extends PushMessageContent {
  
  /// **PushMessageContentHidden** *(pushMessageContentHidden)* - child of PushMessageContent
  ///
  /// A general message with hidden content.
  ///
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentHidden({
    required this.isPinned,
  });
  
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentHidden.fromJson(Map<String, dynamic> json) => PushMessageContentHidden(
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentHidden copyWith({
    bool? isPinned,
  }) => PushMessageContentHidden(
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentHidden';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentAnimation** *(pushMessageContentAnimation)* - child of PushMessageContent
///
/// An animation message (GIF-style).
///
/// * [animation]: Message content; may be null *(optional)*.
/// * [caption]: Animation caption.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentAnimation extends PushMessageContent {
  
  /// **PushMessageContentAnimation** *(pushMessageContentAnimation)* - child of PushMessageContent
  ///
  /// An animation message (GIF-style).
  ///
  /// * [animation]: Message content; may be null *(optional)*.
  /// * [caption]: Animation caption.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentAnimation({
    this.animation,
    required this.caption,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Animation? animation;

  /// Animation caption 
  final String caption;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAnimation.fromJson(Map<String, dynamic> json) => PushMessageContentAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: json['caption'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "animation": animation?.toJson(),
      "caption": caption,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [animation]: Message content; may be null 
  /// * [caption]: Animation caption 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentAnimation copyWith({
    Animation? animation,
    String? caption,
    bool? isPinned,
  }) => PushMessageContentAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentAnimation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentAudio** *(pushMessageContentAudio)* - child of PushMessageContent
///
/// An audio message.
///
/// * [audio]: Message content; may be null *(optional)*.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentAudio extends PushMessageContent {
  
  /// **PushMessageContentAudio** *(pushMessageContentAudio)* - child of PushMessageContent
  ///
  /// An audio message.
  ///
  /// * [audio]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentAudio({
    this.audio,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Audio? audio;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentAudio.fromJson(Map<String, dynamic> json) => PushMessageContentAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "audio": audio?.toJson(),
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [audio]: Message content; may be null 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentAudio copyWith({
    Audio? audio,
    bool? isPinned,
  }) => PushMessageContentAudio(
    audio: audio ?? this.audio,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentAudio';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentContact** *(pushMessageContentContact)* - child of PushMessageContent
///
/// A message with a user contact.
///
/// * [name]: Contact's name.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentContact extends PushMessageContent {
  
  /// **PushMessageContentContact** *(pushMessageContentContact)* - child of PushMessageContent
  ///
  /// A message with a user contact.
  ///
  /// * [name]: Contact's name.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentContact({
    required this.name,
    required this.isPinned,
  });
  
  /// Contact's name 
  final String name;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentContact.fromJson(Map<String, dynamic> json) => PushMessageContentContact(
    name: json['name'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "name": name,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Contact's name 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentContact copyWith({
    String? name,
    bool? isPinned,
  }) => PushMessageContentContact(
    name: name ?? this.name,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentContact';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentContactRegistered** *(pushMessageContentContactRegistered)* - child of PushMessageContent
///
/// A contact has registered with Telegram.
final class PushMessageContentContactRegistered extends PushMessageContent {
  
  /// **PushMessageContentContactRegistered** *(pushMessageContentContactRegistered)* - child of PushMessageContent
  ///
  /// A contact has registered with Telegram.
  const PushMessageContentContactRegistered();
  
  /// Parse from a json
  factory PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json) => const PushMessageContentContactRegistered();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentContactRegistered copyWith() => const PushMessageContentContactRegistered();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentContactRegistered';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentDocument** *(pushMessageContentDocument)* - child of PushMessageContent
///
/// A document message (a general file).
///
/// * [document]: Message content; may be null *(optional)*.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentDocument extends PushMessageContent {
  
  /// **PushMessageContentDocument** *(pushMessageContentDocument)* - child of PushMessageContent
  ///
  /// A document message (a general file).
  ///
  /// * [document]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentDocument({
    this.document,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final Document? document;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentDocument.fromJson(Map<String, dynamic> json) => PushMessageContentDocument(
    document: json['document'] == null ? null : Document.fromJson(json['document']),
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "document": document?.toJson(),
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [document]: Message content; may be null 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentDocument copyWith({
    Document? document,
    bool? isPinned,
  }) => PushMessageContentDocument(
    document: document ?? this.document,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentDocument';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentGame** *(pushMessageContentGame)* - child of PushMessageContent
///
/// A message with a game.
///
/// * [title]: Game title, empty for pinned game message.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentGame extends PushMessageContent {
  
  /// **PushMessageContentGame** *(pushMessageContentGame)* - child of PushMessageContent
  ///
  /// A message with a game.
  ///
  /// * [title]: Game title, empty for pinned game message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentGame({
    required this.title,
    required this.isPinned,
  });
  
  /// Game title, empty for pinned game message 
  final String title;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGame.fromJson(Map<String, dynamic> json) => PushMessageContentGame(
    title: json['title'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Game title, empty for pinned game message 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentGame copyWith({
    String? title,
    bool? isPinned,
  }) => PushMessageContentGame(
    title: title ?? this.title,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentGame';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentGameScore** *(pushMessageContentGameScore)* - child of PushMessageContent
///
/// A new high score was achieved in a game.
///
/// * [title]: Game title, empty for pinned message.
/// * [score]: New score, 0 for pinned message.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentGameScore extends PushMessageContent {
  
  /// **PushMessageContentGameScore** *(pushMessageContentGameScore)* - child of PushMessageContent
  ///
  /// A new high score was achieved in a game.
  ///
  /// * [title]: Game title, empty for pinned message.
  /// * [score]: New score, 0 for pinned message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentGameScore({
    required this.title,
    required this.score,
    required this.isPinned,
  });
  
  /// Game title, empty for pinned message 
  final String title;

  /// New score, 0 for pinned message 
  final int score;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentGameScore.fromJson(Map<String, dynamic> json) => PushMessageContentGameScore(
    title: json['title'],
    score: json['score'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title,
      "score": score,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Game title, empty for pinned message 
  /// * [score]: New score, 0 for pinned message 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentGameScore copyWith({
    String? title,
    int? score,
    bool? isPinned,
  }) => PushMessageContentGameScore(
    title: title ?? this.title,
    score: score ?? this.score,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentGameScore';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentInvoice** *(pushMessageContentInvoice)* - child of PushMessageContent
///
/// A message with an invoice from a bot.
///
/// * [price]: Product price.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentInvoice extends PushMessageContent {
  
  /// **PushMessageContentInvoice** *(pushMessageContentInvoice)* - child of PushMessageContent
  ///
  /// A message with an invoice from a bot.
  ///
  /// * [price]: Product price.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentInvoice({
    required this.price,
    required this.isPinned,
  });
  
  /// Product price 
  final String price;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentInvoice.fromJson(Map<String, dynamic> json) => PushMessageContentInvoice(
    price: json['price'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "price": price,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [price]: Product price 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentInvoice copyWith({
    String? price,
    bool? isPinned,
  }) => PushMessageContentInvoice(
    price: price ?? this.price,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentInvoice';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentLocation** *(pushMessageContentLocation)* - child of PushMessageContent
///
/// A message with a location.
///
/// * [isLive]: True, if the location is live.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentLocation extends PushMessageContent {
  
  /// **PushMessageContentLocation** *(pushMessageContentLocation)* - child of PushMessageContent
  ///
  /// A message with a location.
  ///
  /// * [isLive]: True, if the location is live.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentLocation({
    required this.isLive,
    required this.isPinned,
  });
  
  /// True, if the location is live 
  final bool isLive;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentLocation.fromJson(Map<String, dynamic> json) => PushMessageContentLocation(
    isLive: json['is_live'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "is_live": isLive,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_live]: True, if the location is live 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentLocation copyWith({
    bool? isLive,
    bool? isPinned,
  }) => PushMessageContentLocation(
    isLive: isLive ?? this.isLive,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentLocation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentPhoto** *(pushMessageContentPhoto)* - child of PushMessageContent
///
/// A photo message.
///
/// * [photo]: Message content; may be null *(optional)*.
/// * [caption]: Photo caption.
/// * [isSecret]: True, if the photo is secret.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentPhoto extends PushMessageContent {
  
  /// **PushMessageContentPhoto** *(pushMessageContentPhoto)* - child of PushMessageContent
  ///
  /// A photo message.
  ///
  /// * [photo]: Message content; may be null *(optional)*.
  /// * [caption]: Photo caption.
  /// * [isSecret]: True, if the photo is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentPhoto({
    this.photo,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Photo? photo;

  /// Photo caption
  final String caption;

  /// True, if the photo is secret
  final bool isSecret;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPhoto.fromJson(Map<String, dynamic> json) => PushMessageContentPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "photo": photo?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: Message content; may be null
  /// * [caption]: Photo caption
  /// * [is_secret]: True, if the photo is secret
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentPhoto copyWith({
    Photo? photo,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentPoll** *(pushMessageContentPoll)* - child of PushMessageContent
///
/// A message with a poll.
///
/// * [question]: Poll question.
/// * [isRegular]: True, if the poll is regular and not in quiz mode.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentPoll extends PushMessageContent {
  
  /// **PushMessageContentPoll** *(pushMessageContentPoll)* - child of PushMessageContent
  ///
  /// A message with a poll.
  ///
  /// * [question]: Poll question.
  /// * [isRegular]: True, if the poll is regular and not in quiz mode.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentPoll({
    required this.question,
    required this.isRegular,
    required this.isPinned,
  });
  
  /// Poll question
  final String question;

  /// True, if the poll is regular and not in quiz mode
  final bool isRegular;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPoll.fromJson(Map<String, dynamic> json) => PushMessageContentPoll(
    question: json['question'],
    isRegular: json['is_regular'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "question": question,
      "is_regular": isRegular,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [question]: Poll question
  /// * [is_regular]: True, if the poll is regular and not in quiz mode
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentPoll copyWith({
    String? question,
    bool? isRegular,
    bool? isPinned,
  }) => PushMessageContentPoll(
    question: question ?? this.question,
    isRegular: isRegular ?? this.isRegular,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentPoll';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentPremiumGiftCode** *(pushMessageContentPremiumGiftCode)* - child of PushMessageContent
///
/// A message with a Telegram Premium gift code created for the user.
///
/// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation.
final class PushMessageContentPremiumGiftCode extends PushMessageContent {
  
  /// **PushMessageContentPremiumGiftCode** *(pushMessageContentPremiumGiftCode)* - child of PushMessageContent
  ///
  /// A message with a Telegram Premium gift code created for the user.
  ///
  /// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation.
  const PushMessageContentPremiumGiftCode({
    required this.monthCount,
  });
  
  /// Number of months the Telegram Premium subscription will be active after code activation
  final int monthCount;
  
  /// Parse from a json
  factory PushMessageContentPremiumGiftCode.fromJson(Map<String, dynamic> json) => PushMessageContentPremiumGiftCode(
    monthCount: json['month_count'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "month_count": monthCount,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [month_count]: Number of months the Telegram Premium subscription will be active after code activation
  @override
  PushMessageContentPremiumGiftCode copyWith({
    int? monthCount,
  }) => PushMessageContentPremiumGiftCode(
    monthCount: monthCount ?? this.monthCount,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentPremiumGiftCode';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentPremiumGiveaway** *(pushMessageContentPremiumGiveaway)* - child of PushMessageContent
///
/// A message with a Telegram Premium giveaway.
///
/// * [winnerCount]: Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message.
/// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation; 0 for pinned message.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentPremiumGiveaway extends PushMessageContent {
  
  /// **PushMessageContentPremiumGiveaway** *(pushMessageContentPremiumGiveaway)* - child of PushMessageContent
  ///
  /// A message with a Telegram Premium giveaway.
  ///
  /// * [winnerCount]: Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message.
  /// * [monthCount]: Number of months the Telegram Premium subscription will be active after code activation; 0 for pinned message.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentPremiumGiveaway({
    required this.winnerCount,
    required this.monthCount,
    required this.isPinned,
  });
  
  /// Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message
  final int winnerCount;

  /// Number of months the Telegram Premium subscription will be active after code activation; 0 for pinned message
  final int monthCount;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentPremiumGiveaway.fromJson(Map<String, dynamic> json) => PushMessageContentPremiumGiveaway(
    winnerCount: json['winner_count'],
    monthCount: json['month_count'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "winner_count": winnerCount,
      "month_count": monthCount,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [winner_count]: Number of users which will receive Telegram Premium subscription gift codes; 0 for pinned message
  /// * [month_count]: Number of months the Telegram Premium subscription will be active after code activation; 0 for pinned message
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentPremiumGiveaway copyWith({
    int? winnerCount,
    int? monthCount,
    bool? isPinned,
  }) => PushMessageContentPremiumGiveaway(
    winnerCount: winnerCount ?? this.winnerCount,
    monthCount: monthCount ?? this.monthCount,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentPremiumGiveaway';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentScreenshotTaken** *(pushMessageContentScreenshotTaken)* - child of PushMessageContent
///
/// A screenshot of a message in the chat has been taken.
final class PushMessageContentScreenshotTaken extends PushMessageContent {
  
  /// **PushMessageContentScreenshotTaken** *(pushMessageContentScreenshotTaken)* - child of PushMessageContent
  ///
  /// A screenshot of a message in the chat has been taken.
  const PushMessageContentScreenshotTaken();
  
  /// Parse from a json
  factory PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json) => const PushMessageContentScreenshotTaken();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentScreenshotTaken copyWith() => const PushMessageContentScreenshotTaken();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentScreenshotTaken';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentSticker** *(pushMessageContentSticker)* - child of PushMessageContent
///
/// A message with a sticker.
///
/// * [sticker]: Message content; may be null *(optional)*.
/// * [emoji]: Emoji corresponding to the sticker; may be empty.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentSticker extends PushMessageContent {
  
  /// **PushMessageContentSticker** *(pushMessageContentSticker)* - child of PushMessageContent
  ///
  /// A message with a sticker.
  ///
  /// * [sticker]: Message content; may be null *(optional)*.
  /// * [emoji]: Emoji corresponding to the sticker; may be empty.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentSticker({
    this.sticker,
    required this.emoji,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Sticker? sticker;

  /// Emoji corresponding to the sticker; may be empty
  final String emoji;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentSticker.fromJson(Map<String, dynamic> json) => PushMessageContentSticker(
    sticker: json['sticker'] == null ? null : Sticker.fromJson(json['sticker']),
    emoji: json['emoji'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "sticker": sticker?.toJson(),
      "emoji": emoji,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [sticker]: Message content; may be null
  /// * [emoji]: Emoji corresponding to the sticker; may be empty
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentSticker copyWith({
    Sticker? sticker,
    String? emoji,
    bool? isPinned,
  }) => PushMessageContentSticker(
    sticker: sticker ?? this.sticker,
    emoji: emoji ?? this.emoji,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentSticker';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentStory** *(pushMessageContentStory)* - child of PushMessageContent
///
/// A message with a story.
///
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentStory extends PushMessageContent {
  
  /// **PushMessageContentStory** *(pushMessageContentStory)* - child of PushMessageContent
  ///
  /// A message with a story.
  ///
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentStory({
    required this.isPinned,
  });
  
  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentStory.fromJson(Map<String, dynamic> json) => PushMessageContentStory(
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentStory copyWith({
    bool? isPinned,
  }) => PushMessageContentStory(
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentStory';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentText** *(pushMessageContentText)* - child of PushMessageContent
///
/// A text message.
///
/// * [text]: Message text.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentText extends PushMessageContent {
  
  /// **PushMessageContentText** *(pushMessageContentText)* - child of PushMessageContent
  ///
  /// A text message.
  ///
  /// * [text]: Message text.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentText({
    required this.text,
    required this.isPinned,
  });
  
  /// Message text 
  final String text;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentText.fromJson(Map<String, dynamic> json) => PushMessageContentText(
    text: json['text'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Message text 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentText copyWith({
    String? text,
    bool? isPinned,
  }) => PushMessageContentText(
    text: text ?? this.text,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentText';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentVideo** *(pushMessageContentVideo)* - child of PushMessageContent
///
/// A video message.
///
/// * [video]: Message content; may be null *(optional)*.
/// * [caption]: Video caption.
/// * [isSecret]: True, if the video is secret.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentVideo extends PushMessageContent {
  
  /// **PushMessageContentVideo** *(pushMessageContentVideo)* - child of PushMessageContent
  ///
  /// A video message.
  ///
  /// * [video]: Message content; may be null *(optional)*.
  /// * [caption]: Video caption.
  /// * [isSecret]: True, if the video is secret.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVideo({
    this.video,
    required this.caption,
    required this.isSecret,
    required this.isPinned,
  });
  
  /// Message content; may be null
  final Video? video;

  /// Video caption
  final String caption;

  /// True, if the video is secret
  final bool isSecret;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideo.fromJson(Map<String, dynamic> json) => PushMessageContentVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: json['caption'],
    isSecret: json['is_secret'],
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "video": video?.toJson(),
      "caption": caption,
      "is_secret": isSecret,
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video]: Message content; may be null
  /// * [caption]: Video caption
  /// * [is_secret]: True, if the video is secret
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentVideo copyWith({
    Video? video,
    String? caption,
    bool? isSecret,
    bool? isPinned,
  }) => PushMessageContentVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    isSecret: isSecret ?? this.isSecret,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentVideoNote** *(pushMessageContentVideoNote)* - child of PushMessageContent
///
/// A video note message.
///
/// * [videoNote]: Message content; may be null *(optional)*.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentVideoNote extends PushMessageContent {
  
  /// **PushMessageContentVideoNote** *(pushMessageContentVideoNote)* - child of PushMessageContent
  ///
  /// A video note message.
  ///
  /// * [videoNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVideoNote({
    this.videoNote,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final VideoNote? videoNote;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) => PushMessageContentVideoNote(
    videoNote: json['video_note'] == null ? null : VideoNote.fromJson(json['video_note']),
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "video_note": videoNote?.toJson(),
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video_note]: Message content; may be null 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentVideoNote copyWith({
    VideoNote? videoNote,
    bool? isPinned,
  }) => PushMessageContentVideoNote(
    videoNote: videoNote ?? this.videoNote,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentVideoNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentVoiceNote** *(pushMessageContentVoiceNote)* - child of PushMessageContent
///
/// A voice note message.
///
/// * [voiceNote]: Message content; may be null *(optional)*.
/// * [isPinned]: True, if the message is a pinned message with the specified content.
final class PushMessageContentVoiceNote extends PushMessageContent {
  
  /// **PushMessageContentVoiceNote** *(pushMessageContentVoiceNote)* - child of PushMessageContent
  ///
  /// A voice note message.
  ///
  /// * [voiceNote]: Message content; may be null *(optional)*.
  /// * [isPinned]: True, if the message is a pinned message with the specified content.
  const PushMessageContentVoiceNote({
    this.voiceNote,
    required this.isPinned,
  });
  
  /// Message content; may be null 
  final VoiceNote? voiceNote;

  /// True, if the message is a pinned message with the specified content
  final bool isPinned;
  
  /// Parse from a json
  factory PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) => PushMessageContentVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    isPinned: json['is_pinned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "voice_note": voiceNote?.toJson(),
      "is_pinned": isPinned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [voice_note]: Message content; may be null 
  /// * [is_pinned]: True, if the message is a pinned message with the specified content
  @override
  PushMessageContentVoiceNote copyWith({
    VoiceNote? voiceNote,
    bool? isPinned,
  }) => PushMessageContentVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    isPinned: isPinned ?? this.isPinned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentVoiceNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentBasicGroupChatCreate** *(pushMessageContentBasicGroupChatCreate)* - child of PushMessageContent
///
/// A newly created basic group.
final class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  
  /// **PushMessageContentBasicGroupChatCreate** *(pushMessageContentBasicGroupChatCreate)* - child of PushMessageContent
  ///
  /// A newly created basic group.
  const PushMessageContentBasicGroupChatCreate();
  
  /// Parse from a json
  factory PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json) => const PushMessageContentBasicGroupChatCreate();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentBasicGroupChatCreate copyWith() => const PushMessageContentBasicGroupChatCreate();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentBasicGroupChatCreate';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatAddMembers** *(pushMessageContentChatAddMembers)* - child of PushMessageContent
///
/// New chat members were invited to a group.
///
/// * [memberName]: Name of the added member.
/// * [isCurrentUser]: True, if the current user was added to the group.
/// * [isReturned]: True, if the user has returned to the group themselves.
final class PushMessageContentChatAddMembers extends PushMessageContent {
  
  /// **PushMessageContentChatAddMembers** *(pushMessageContentChatAddMembers)* - child of PushMessageContent
  ///
  /// New chat members were invited to a group.
  ///
  /// * [memberName]: Name of the added member.
  /// * [isCurrentUser]: True, if the current user was added to the group.
  /// * [isReturned]: True, if the user has returned to the group themselves.
  const PushMessageContentChatAddMembers({
    required this.memberName,
    required this.isCurrentUser,
    required this.isReturned,
  });
  
  /// Name of the added member
  final String memberName;

  /// True, if the current user was added to the group
  final bool isCurrentUser;

  /// True, if the user has returned to the group themselves
  final bool isReturned;
  
  /// Parse from a json
  factory PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) => PushMessageContentChatAddMembers(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isReturned: json['is_returned'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_returned": isReturned,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [member_name]: Name of the added member
  /// * [is_current_user]: True, if the current user was added to the group
  /// * [is_returned]: True, if the user has returned to the group themselves
  @override
  PushMessageContentChatAddMembers copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isReturned,
  }) => PushMessageContentChatAddMembers(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isReturned: isReturned ?? this.isReturned,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatAddMembers';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatChangePhoto** *(pushMessageContentChatChangePhoto)* - child of PushMessageContent
///
/// A chat photo was edited.
final class PushMessageContentChatChangePhoto extends PushMessageContent {
  
  /// **PushMessageContentChatChangePhoto** *(pushMessageContentChatChangePhoto)* - child of PushMessageContent
  ///
  /// A chat photo was edited.
  const PushMessageContentChatChangePhoto();
  
  /// Parse from a json
  factory PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json) => const PushMessageContentChatChangePhoto();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentChatChangePhoto copyWith() => const PushMessageContentChatChangePhoto();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatChangePhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatChangeTitle** *(pushMessageContentChatChangeTitle)* - child of PushMessageContent
///
/// A chat title was edited.
///
/// * [title]: New chat title.
final class PushMessageContentChatChangeTitle extends PushMessageContent {
  
  /// **PushMessageContentChatChangeTitle** *(pushMessageContentChatChangeTitle)* - child of PushMessageContent
  ///
  /// A chat title was edited.
  ///
  /// * [title]: New chat title.
  const PushMessageContentChatChangeTitle({
    required this.title,
  });
  
  /// New chat title
  final String title;
  
  /// Parse from a json
  factory PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) => PushMessageContentChatChangeTitle(
    title: json['title'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: New chat title
  @override
  PushMessageContentChatChangeTitle copyWith({
    String? title,
  }) => PushMessageContentChatChangeTitle(
    title: title ?? this.title,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatChangeTitle';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatSetBackground** *(pushMessageContentChatSetBackground)* - child of PushMessageContent
///
/// A chat background was edited.
///
/// * [isSame]: True, if the set background is the same as the background of the current user.
final class PushMessageContentChatSetBackground extends PushMessageContent {
  
  /// **PushMessageContentChatSetBackground** *(pushMessageContentChatSetBackground)* - child of PushMessageContent
  ///
  /// A chat background was edited.
  ///
  /// * [isSame]: True, if the set background is the same as the background of the current user.
  const PushMessageContentChatSetBackground({
    required this.isSame,
  });
  
  /// True, if the set background is the same as the background of the current user
  final bool isSame;
  
  /// Parse from a json
  factory PushMessageContentChatSetBackground.fromJson(Map<String, dynamic> json) => PushMessageContentChatSetBackground(
    isSame: json['is_same'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "is_same": isSame,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [is_same]: True, if the set background is the same as the background of the current user
  @override
  PushMessageContentChatSetBackground copyWith({
    bool? isSame,
  }) => PushMessageContentChatSetBackground(
    isSame: isSame ?? this.isSame,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatSetBackground';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatSetTheme** *(pushMessageContentChatSetTheme)* - child of PushMessageContent
///
/// A chat theme was edited.
///
/// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one.
final class PushMessageContentChatSetTheme extends PushMessageContent {
  
  /// **PushMessageContentChatSetTheme** *(pushMessageContentChatSetTheme)* - child of PushMessageContent
  ///
  /// A chat theme was edited.
  ///
  /// * [themeName]: If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one.
  const PushMessageContentChatSetTheme({
    required this.themeName,
  });
  
  /// If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one
  final String themeName;
  
  /// Parse from a json
  factory PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json) => PushMessageContentChatSetTheme(
    themeName: json['theme_name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "theme_name": themeName,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [theme_name]: If non-empty, name of a new theme, set for the chat. Otherwise, the chat theme was reset to the default one
  @override
  PushMessageContentChatSetTheme copyWith({
    String? themeName,
  }) => PushMessageContentChatSetTheme(
    themeName: themeName ?? this.themeName,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatSetTheme';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatDeleteMember** *(pushMessageContentChatDeleteMember)* - child of PushMessageContent
///
/// A chat member was deleted.
///
/// * [memberName]: Name of the deleted member.
/// * [isCurrentUser]: True, if the current user was deleted from the group.
/// * [isLeft]: True, if the user has left the group themselves.
final class PushMessageContentChatDeleteMember extends PushMessageContent {
  
  /// **PushMessageContentChatDeleteMember** *(pushMessageContentChatDeleteMember)* - child of PushMessageContent
  ///
  /// A chat member was deleted.
  ///
  /// * [memberName]: Name of the deleted member.
  /// * [isCurrentUser]: True, if the current user was deleted from the group.
  /// * [isLeft]: True, if the user has left the group themselves.
  const PushMessageContentChatDeleteMember({
    required this.memberName,
    required this.isCurrentUser,
    required this.isLeft,
  });
  
  /// Name of the deleted member
  final String memberName;

  /// True, if the current user was deleted from the group
  final bool isCurrentUser;

  /// True, if the user has left the group themselves
  final bool isLeft;
  
  /// Parse from a json
  factory PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) => PushMessageContentChatDeleteMember(
    memberName: json['member_name'],
    isCurrentUser: json['is_current_user'],
    isLeft: json['is_left'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "member_name": memberName,
      "is_current_user": isCurrentUser,
      "is_left": isLeft,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [member_name]: Name of the deleted member
  /// * [is_current_user]: True, if the current user was deleted from the group
  /// * [is_left]: True, if the user has left the group themselves
  @override
  PushMessageContentChatDeleteMember copyWith({
    String? memberName,
    bool? isCurrentUser,
    bool? isLeft,
  }) => PushMessageContentChatDeleteMember(
    memberName: memberName ?? this.memberName,
    isCurrentUser: isCurrentUser ?? this.isCurrentUser,
    isLeft: isLeft ?? this.isLeft,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatDeleteMember';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatJoinByLink** *(pushMessageContentChatJoinByLink)* - child of PushMessageContent
///
/// A new member joined the chat via an invite link.
final class PushMessageContentChatJoinByLink extends PushMessageContent {
  
  /// **PushMessageContentChatJoinByLink** *(pushMessageContentChatJoinByLink)* - child of PushMessageContent
  ///
  /// A new member joined the chat via an invite link.
  const PushMessageContentChatJoinByLink();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByLink();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentChatJoinByLink copyWith() => const PushMessageContentChatJoinByLink();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatJoinByLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentChatJoinByRequest** *(pushMessageContentChatJoinByRequest)* - child of PushMessageContent
///
/// A new member was accepted to the chat by an administrator.
final class PushMessageContentChatJoinByRequest extends PushMessageContent {
  
  /// **PushMessageContentChatJoinByRequest** *(pushMessageContentChatJoinByRequest)* - child of PushMessageContent
  ///
  /// A new member was accepted to the chat by an administrator.
  const PushMessageContentChatJoinByRequest();
  
  /// Parse from a json
  factory PushMessageContentChatJoinByRequest.fromJson(Map<String, dynamic> json) => const PushMessageContentChatJoinByRequest();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentChatJoinByRequest copyWith() => const PushMessageContentChatJoinByRequest();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentChatJoinByRequest';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentRecurringPayment** *(pushMessageContentRecurringPayment)* - child of PushMessageContent
///
/// A new recurring payment was made by the current user.
///
/// * [amount]: The paid amount.
final class PushMessageContentRecurringPayment extends PushMessageContent {
  
  /// **PushMessageContentRecurringPayment** *(pushMessageContentRecurringPayment)* - child of PushMessageContent
  ///
  /// A new recurring payment was made by the current user.
  ///
  /// * [amount]: The paid amount.
  const PushMessageContentRecurringPayment({
    required this.amount,
  });
  
  /// The paid amount
  final String amount;
  
  /// Parse from a json
  factory PushMessageContentRecurringPayment.fromJson(Map<String, dynamic> json) => PushMessageContentRecurringPayment(
    amount: json['amount'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "amount": amount,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [amount]: The paid amount
  @override
  PushMessageContentRecurringPayment copyWith({
    String? amount,
  }) => PushMessageContentRecurringPayment(
    amount: amount ?? this.amount,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentRecurringPayment';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentSuggestProfilePhoto** *(pushMessageContentSuggestProfilePhoto)* - child of PushMessageContent
///
/// A profile photo was suggested to the user.
final class PushMessageContentSuggestProfilePhoto extends PushMessageContent {
  
  /// **PushMessageContentSuggestProfilePhoto** *(pushMessageContentSuggestProfilePhoto)* - child of PushMessageContent
  ///
  /// A profile photo was suggested to the user.
  const PushMessageContentSuggestProfilePhoto();
  
  /// Parse from a json
  factory PushMessageContentSuggestProfilePhoto.fromJson(Map<String, dynamic> json) => const PushMessageContentSuggestProfilePhoto();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PushMessageContentSuggestProfilePhoto copyWith() => const PushMessageContentSuggestProfilePhoto();

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentSuggestProfilePhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentMessageForwards** *(pushMessageContentMessageForwards)* - child of PushMessageContent
///
/// A forwarded messages.
///
/// * [totalCount]: Number of forwarded messages.
final class PushMessageContentMessageForwards extends PushMessageContent {
  
  /// **PushMessageContentMessageForwards** *(pushMessageContentMessageForwards)* - child of PushMessageContent
  ///
  /// A forwarded messages.
  ///
  /// * [totalCount]: Number of forwarded messages.
  const PushMessageContentMessageForwards({
    required this.totalCount,
  });
  
  /// Number of forwarded messages
  final int totalCount;
  
  /// Parse from a json
  factory PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) => PushMessageContentMessageForwards(
    totalCount: json['total_count'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "total_count": totalCount,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Number of forwarded messages
  @override
  PushMessageContentMessageForwards copyWith({
    int? totalCount,
  }) => PushMessageContentMessageForwards(
    totalCount: totalCount ?? this.totalCount,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentMessageForwards';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PushMessageContentMediaAlbum** *(pushMessageContentMediaAlbum)* - child of PushMessageContent
///
/// A media album.
///
/// * [totalCount]: Number of messages in the album.
/// * [hasPhotos]: True, if the album has at least one photo.
/// * [hasVideos]: True, if the album has at least one video file.
/// * [hasAudios]: True, if the album has at least one audio file.
/// * [hasDocuments]: True, if the album has at least one document.
final class PushMessageContentMediaAlbum extends PushMessageContent {
  
  /// **PushMessageContentMediaAlbum** *(pushMessageContentMediaAlbum)* - child of PushMessageContent
  ///
  /// A media album.
  ///
  /// * [totalCount]: Number of messages in the album.
  /// * [hasPhotos]: True, if the album has at least one photo.
  /// * [hasVideos]: True, if the album has at least one video file.
  /// * [hasAudios]: True, if the album has at least one audio file.
  /// * [hasDocuments]: True, if the album has at least one document.
  const PushMessageContentMediaAlbum({
    required this.totalCount,
    required this.hasPhotos,
    required this.hasVideos,
    required this.hasAudios,
    required this.hasDocuments,
  });
  
  /// Number of messages in the album
  final int totalCount;

  /// True, if the album has at least one photo
  final bool hasPhotos;

  /// True, if the album has at least one video file
  final bool hasVideos;

  /// True, if the album has at least one audio file
  final bool hasAudios;

  /// True, if the album has at least one document
  final bool hasDocuments;
  
  /// Parse from a json
  factory PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) => PushMessageContentMediaAlbum(
    totalCount: json['total_count'],
    hasPhotos: json['has_photos'],
    hasVideos: json['has_videos'],
    hasAudios: json['has_audios'],
    hasDocuments: json['has_documents'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "total_count": totalCount,
      "has_photos": hasPhotos,
      "has_videos": hasVideos,
      "has_audios": hasAudios,
      "has_documents": hasDocuments,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [total_count]: Number of messages in the album
  /// * [has_photos]: True, if the album has at least one photo
  /// * [has_videos]: True, if the album has at least one video file
  /// * [has_audios]: True, if the album has at least one audio file
  /// * [has_documents]: True, if the album has at least one document
  @override
  PushMessageContentMediaAlbum copyWith({
    int? totalCount,
    bool? hasPhotos,
    bool? hasVideos,
    bool? hasAudios,
    bool? hasDocuments,
  }) => PushMessageContentMediaAlbum(
    totalCount: totalCount ?? this.totalCount,
    hasPhotos: hasPhotos ?? this.hasPhotos,
    hasVideos: hasVideos ?? this.hasVideos,
    hasAudios: hasAudios ?? this.hasAudios,
    hasDocuments: hasDocuments ?? this.hasDocuments,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pushMessageContentMediaAlbum';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
