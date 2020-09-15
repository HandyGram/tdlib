part of '../tdapi.dart';

class InputMessageContent extends TdObject {
  

  /// The content of a message to send
  InputMessageContent();

  /// a InputMessageContent return type can be :
  /// * InputMessageText
  /// * InputMessageAnimation
  /// * InputMessageAudio
  /// * InputMessageDocument
  /// * InputMessagePhoto
  /// * InputMessageSticker
  /// * InputMessageVideo
  /// * InputMessageVideoNote
  /// * InputMessageVoiceNote
  /// * InputMessageLocation
  /// * InputMessageVenue
  /// * InputMessageContact
  /// * InputMessageDice
  /// * InputMessageGame
  /// * InputMessageInvoice
  /// * InputMessagePoll
  /// * InputMessageForwarded
  factory InputMessageContent.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inputMessageContent';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageText extends InputMessageContent {
  FormattedText text;
  bool disableWebPagePreview;
  bool clearDraft;

  /// A text message. 
  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max") characters. Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities are allowed to be specified manually. 
  /// [disableWebPagePreview] True, if rich web page previews for URLs in the message text should be disabled. 
  /// [clearDraft] True, if a chat message draft should be deleted
  InputMessageText({this.text,
    this.disableWebPagePreview,
    this.clearDraft});

  /// Parse from a json
  InputMessageText.fromJson(Map<String, dynamic> json)  {
    this.text = FormattedText.fromJson(json['text'] ?? <String, dynamic>{});
    this.disableWebPagePreview = json['disable_web_page_preview'];
    this.clearDraft = json['clear_draft'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text == null ? null : this.text.toJson(),
      "disable_web_page_preview": this.disableWebPagePreview,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageText';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAnimation extends InputMessageContent {
  InputFile animation;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  FormattedText caption;

  /// An animation message (GIF-style).. 
  /// [animation] Animation file to be sent . 
  /// [thumbnail] Animation thumbnail, if available . 
  /// [addedStickerFileIds] File identifiers of the stickers added to the animation, if applicable. 
  /// [duration] Duration of the animation, in seconds. 
  /// [width] Width of the animation; may be replaced by the server . 
  /// [height] Height of the animation; may be replaced by the server . 
  /// [caption] Animation caption; 0-GetOption("message_caption_length_max") characters
  InputMessageAnimation({this.animation,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.caption});

  /// Parse from a json
  InputMessageAnimation.fromJson(Map<String, dynamic> json)  {
    this.animation = InputFile.fromJson(json['animation'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageAudio extends InputMessageContent {
  InputFile audio;
  InputThumbnail albumCoverThumbnail;
  int duration;
  String title;
  String performer;
  FormattedText caption;

  /// An audio message. 
  /// [audio] Audio file to be sent . 
  /// [albumCoverThumbnail] Thumbnail of the cover for the album, if available . 
  /// [duration] Duration of the audio, in seconds; may be replaced by the server . 
  /// [title] Title of the audio; 0-64 characters; may be replaced by the server. 
  /// [performer] Performer of the audio; 0-64 characters, may be replaced by the server. 
  /// [caption] Audio caption; 0-GetOption("message_caption_length_max") characters
  InputMessageAudio({this.audio,
    this.albumCoverThumbnail,
    this.duration,
    this.title,
    this.performer,
    this.caption});

  /// Parse from a json
  InputMessageAudio.fromJson(Map<String, dynamic> json)  {
    this.audio = InputFile.fromJson(json['audio'] ?? <String, dynamic>{});
    this.albumCoverThumbnail = InputThumbnail.fromJson(json['album_cover_thumbnail'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.title = json['title'];
    this.performer = json['performer'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "audio": this.audio == null ? null : this.audio.toJson(),
      "album_cover_thumbnail": this.albumCoverThumbnail == null ? null : this.albumCoverThumbnail.toJson(),
      "duration": this.duration,
      "title": this.title,
      "performer": this.performer,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDocument extends InputMessageContent {
  InputFile document;
  InputThumbnail thumbnail;
  bool forceFile;
  FormattedText caption;

  /// A document message (general file). 
  /// [document] Document to be sent . 
  /// [thumbnail] Document thumbnail, if available . 
  /// [forceFile] If true, automatic file type detection will be disabled and the document will be always sent as file. Always true for files sent to secret chats . 
  /// [caption] Document caption; 0-GetOption("message_caption_length_max") characters
  InputMessageDocument({this.document,
    this.thumbnail,
    this.forceFile,
    this.caption});

  /// Parse from a json
  InputMessageDocument.fromJson(Map<String, dynamic> json)  {
    this.document = InputFile.fromJson(json['document'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.forceFile = json['force_file'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "document": this.document == null ? null : this.document.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "force_file": this.forceFile,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePhoto extends InputMessageContent {
  InputFile photo;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int width;
  int height;
  FormattedText caption;
  int ttl;

  /// A photo message. 
  /// [photo] Photo to send . 
  /// [thumbnail] Photo thumbnail to be sent, this is sent to the other party in secret chats only . 
  /// [addedStickerFileIds] File identifiers of the stickers added to the photo, if applicable . 
  /// [width] Photo width . 
  /// [height] Photo height . 
  /// [caption] Photo caption; 0-GetOption("message_caption_length_max") characters. 
  /// [ttl] Photo TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  InputMessagePhoto({this.photo,
    this.thumbnail,
    this.addedStickerFileIds,
    this.width,
    this.height,
    this.caption,
    this.ttl});

  /// Parse from a json
  InputMessagePhoto.fromJson(Map<String, dynamic> json)  {
    this.photo = InputFile.fromJson(json['photo'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
    this.width = json['width'];
    this.height = json['height'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "width": this.width,
      "height": this.height,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageSticker extends InputMessageContent {
  InputFile sticker;
  InputThumbnail thumbnail;
  int width;
  int height;

  /// A sticker message. 
  /// [sticker] Sticker to be sent . 
  /// [thumbnail] Sticker thumbnail, if available . 
  /// [width] Sticker width . 
  /// [height] Sticker height
  InputMessageSticker({this.sticker,
    this.thumbnail,
    this.width,
    this.height});

  /// Parse from a json
  InputMessageSticker.fromJson(Map<String, dynamic> json)  {
    this.sticker = InputFile.fromJson(json['sticker'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.width = json['width'];
    this.height = json['height'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker == null ? null : this.sticker.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "width": this.width,
      "height": this.height,
    };
  }

  static const CONSTRUCTOR = 'inputMessageSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideo extends InputMessageContent {
  InputFile video;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  bool supportsStreaming;
  FormattedText caption;
  int ttl;

  /// A video message. 
  /// [video] Video to be sent . 
  /// [thumbnail] Video thumbnail, if available . 
  /// [addedStickerFileIds] File identifiers of the stickers added to the video, if applicable. 
  /// [duration] Duration of the video, in seconds. 
  /// [width] Video width . 
  /// [height] Video height . 
  /// [supportsStreaming] True, if the video should be tried to be streamed. 
  /// [caption] Video caption; 0-GetOption("message_caption_length_max") characters. 
  /// [ttl] Video TTL (Time To Live), in seconds (0-60). A non-zero TTL can be specified only in private chats
  InputMessageVideo({this.video,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.supportsStreaming,
    this.caption,
    this.ttl});

  /// Parse from a json
  InputMessageVideo.fromJson(Map<String, dynamic> json)  {
    this.video = InputFile.fromJson(json['video'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.addedStickerFileIds = List<int>.from((json['added_sticker_file_ids'] ?? []).map((item) => item).toList());
    this.duration = json['duration'];
    this.width = json['width'];
    this.height = json['height'];
    this.supportsStreaming = json['supports_streaming'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
    this.ttl = json['ttl'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video": this.video == null ? null : this.video.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "added_sticker_file_ids": this.addedStickerFileIds.map((i) => i).toList(),
      "duration": this.duration,
      "width": this.width,
      "height": this.height,
      "supports_streaming": this.supportsStreaming,
      "caption": this.caption == null ? null : this.caption.toJson(),
      "ttl": this.ttl,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVideoNote extends InputMessageContent {
  InputFile videoNote;
  InputThumbnail thumbnail;
  int duration;
  int length;

  /// A video note message. 
  /// [videoNote] Video note to be sent . 
  /// [thumbnail] Video thumbnail, if available . 
  /// [duration] Duration of the video, in seconds . 
  /// [length] Video width and height; must be positive and not greater than 640
  InputMessageVideoNote({this.videoNote,
    this.thumbnail,
    this.duration,
    this.length});

  /// Parse from a json
  InputMessageVideoNote.fromJson(Map<String, dynamic> json)  {
    this.videoNote = InputFile.fromJson(json['video_note'] ?? <String, dynamic>{});
    this.thumbnail = InputThumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.length = json['length'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "video_note": this.videoNote == null ? null : this.videoNote.toJson(),
      "thumbnail": this.thumbnail == null ? null : this.thumbnail.toJson(),
      "duration": this.duration,
      "length": this.length,
    };
  }

  static const CONSTRUCTOR = 'inputMessageVideoNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVoiceNote extends InputMessageContent {
  InputFile voiceNote;
  int duration;
  String waveform;
  FormattedText caption;

  /// A voice note message. 
  /// [voiceNote] Voice note to be sent . 
  /// [duration] Duration of the voice note, in seconds . 
  /// [waveform] Waveform representation of the voice note, in 5-bit format . 
  /// [caption] Voice note caption; 0-GetOption("message_caption_length_max") characters
  InputMessageVoiceNote({this.voiceNote,
    this.duration,
    this.waveform,
    this.caption});

  /// Parse from a json
  InputMessageVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.voiceNote = InputFile.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.duration = json['duration'];
    this.waveform = json['waveform'];
    this.caption = FormattedText.fromJson(json['caption'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "voice_note": this.voiceNote == null ? null : this.voiceNote.toJson(),
      "duration": this.duration,
      "waveform": this.waveform,
      "caption": this.caption == null ? null : this.caption.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageLocation extends InputMessageContent {
  Location location;
  int livePeriod;

  /// A message with a location. 
  /// [location] Location to be sent . 
  /// [livePeriod] Period for which the location can be updated, in seconds; should be between 60 and 86400 for a live location and 0 otherwise
  InputMessageLocation({this.location,
    this.livePeriod});

  /// Parse from a json
  InputMessageLocation.fromJson(Map<String, dynamic> json)  {
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.livePeriod = json['live_period'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": this.location == null ? null : this.location.toJson(),
      "live_period": this.livePeriod,
    };
  }

  static const CONSTRUCTOR = 'inputMessageLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageVenue extends InputMessageContent {
  Venue venue;

  /// A message with information about a venue. 
  /// [venue] Venue to send
  InputMessageVenue({this.venue});

  /// Parse from a json
  InputMessageVenue.fromJson(Map<String, dynamic> json)  {
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "venue": this.venue == null ? null : this.venue.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageContact extends InputMessageContent {
  Contact contact;

  /// A message containing a user contact. 
  /// [contact] Contact to send
  InputMessageContact({this.contact});

  /// Parse from a json
  InputMessageContact.fromJson(Map<String, dynamic> json)  {
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "contact": this.contact == null ? null : this.contact.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputMessageContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageDice extends InputMessageContent {
  String emoji;
  bool clearDraft;

  /// A dice message. 
  /// [emoji] Emoji on which the dice throw animation is based . 
  /// [clearDraft] True, if a chat message draft should be deleted
  InputMessageDice({this.emoji,
    this.clearDraft});

  /// Parse from a json
  InputMessageDice.fromJson(Map<String, dynamic> json)  {
    this.emoji = json['emoji'];
    this.clearDraft = json['clear_draft'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "clear_draft": this.clearDraft,
    };
  }

  static const CONSTRUCTOR = 'inputMessageDice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageGame extends InputMessageContent {
  int botUserId;
  String gameShortName;

  /// A message with a game; not supported for channels or secret chats. 
  /// [botUserId] User identifier of the bot that owns the game . 
  /// [gameShortName] Short name of the game
  InputMessageGame({this.botUserId,
    this.gameShortName});

  /// Parse from a json
  InputMessageGame.fromJson(Map<String, dynamic> json)  {
    this.botUserId = json['bot_user_id'];
    this.gameShortName = json['game_short_name'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "game_short_name": this.gameShortName,
    };
  }

  static const CONSTRUCTOR = 'inputMessageGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageInvoice extends InputMessageContent {
  Invoice invoice;
  String title;
  String description;
  String photoUrl;
  int photoSize;
  int photoWidth;
  int photoHeight;
  String payload;
  String providerToken;
  String providerData;
  String startParameter;

  /// A message with an invoice; can be used only by bots and only in private chats. 
  /// [invoice] Invoice . 
  /// [title] Product title; 1-32 characters . 
  /// [description] Product description; 0-255 characters . 
  /// [photoUrl] Product photo URL; optional . 
  /// [photoSize] Product photo size . 
  /// [photoWidth] Product photo width . 
  /// [photoHeight] Product photo height. 
  /// [payload] The invoice payload. 
  /// [providerToken] Payment provider token . 
  /// [providerData] JSON-encoded data about the invoice, which will be shared with the payment provider . 
  /// [startParameter] Unique invoice bot start_parameter for the generation of this invoice
  InputMessageInvoice({this.invoice,
    this.title,
    this.description,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.payload,
    this.providerToken,
    this.providerData,
    this.startParameter});

  /// Parse from a json
  InputMessageInvoice.fromJson(Map<String, dynamic> json)  {
    this.invoice = Invoice.fromJson(json['invoice'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
    this.photoUrl = json['photo_url'];
    this.photoSize = json['photo_size'];
    this.photoWidth = json['photo_width'];
    this.photoHeight = json['photo_height'];
    this.payload = json['payload'];
    this.providerToken = json['provider_token'];
    this.providerData = json['provider_data'];
    this.startParameter = json['start_parameter'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invoice": this.invoice == null ? null : this.invoice.toJson(),
      "title": this.title,
      "description": this.description,
      "photo_url": this.photoUrl,
      "photo_size": this.photoSize,
      "photo_width": this.photoWidth,
      "photo_height": this.photoHeight,
      "payload": this.payload,
      "provider_token": this.providerToken,
      "provider_data": this.providerData,
      "start_parameter": this.startParameter,
    };
  }

  static const CONSTRUCTOR = 'inputMessageInvoice';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessagePoll extends InputMessageContent {
  String question;
  List<String> options;
  bool isAnonymous;
  PollType type;
  int openPeriod;
  int closeDate;
  bool isClosed;

  /// A message with a poll. Polls can't be sent to secret chats. Polls can be sent only to a private chat with a bot. 
  /// [question] Poll question, 1-255 characters . 
  /// [options] List of poll answer options, 2-10 strings 1-100 characters each. 
  /// [isAnonymous] True, if the poll voters are anonymous. Non-anonymous polls can't be sent or forwarded to channels. 
  /// [type] Type of the poll. 
  /// [openPeriod] Amount of time the poll will be active after creation, in seconds; for bots only. 
  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed; for bots only. 
  /// [isClosed] True, if the poll needs to be sent already closed; for bots only
  InputMessagePoll({this.question,
    this.options,
    this.isAnonymous,
    this.type,
    this.openPeriod,
    this.closeDate,
    this.isClosed});

  /// Parse from a json
  InputMessagePoll.fromJson(Map<String, dynamic> json)  {
    this.question = json['question'];
    this.options = List<String>.from((json['options'] ?? []).map((item) => item).toList());
    this.isAnonymous = json['is_anonymous'];
    this.type = PollType.fromJson(json['type'] ?? <String, dynamic>{});
    this.openPeriod = json['open_period'];
    this.closeDate = json['close_date'];
    this.isClosed = json['is_closed'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "question": this.question,
      "options": this.options.map((i) => i).toList(),
      "is_anonymous": this.isAnonymous,
      "type": this.type == null ? null : this.type.toJson(),
      "open_period": this.openPeriod,
      "close_date": this.closeDate,
      "is_closed": this.isClosed,
    };
  }

  static const CONSTRUCTOR = 'inputMessagePoll';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputMessageForwarded extends InputMessageContent {
  int fromChatId;
  int messageId;
  bool inGameShare;
  bool sendCopy;
  bool removeCaption;

  /// A forwarded message. 
  /// [fromChatId] Identifier for the chat this forwarded message came from . 
  /// [messageId] Identifier of the message to forward. 
  /// [inGameShare] True, if a game message should be shared within a launched game; applies only to game messages. 
  /// [sendCopy] True, if content of the message needs to be copied without a link to the original message. Always true if the message is forwarded to a secret chat. 
  /// [removeCaption] True, if media caption of the message copy needs to be removed. Ignored if send_copy is false
  InputMessageForwarded({this.fromChatId,
    this.messageId,
    this.inGameShare,
    this.sendCopy,
    this.removeCaption});

  /// Parse from a json
  InputMessageForwarded.fromJson(Map<String, dynamic> json)  {
    this.fromChatId = json['from_chat_id'];
    this.messageId = json['message_id'];
    this.inGameShare = json['in_game_share'];
    this.sendCopy = json['send_copy'];
    this.removeCaption = json['remove_caption'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "from_chat_id": this.fromChatId,
      "message_id": this.messageId,
      "in_game_share": this.inGameShare,
      "send_copy": this.sendCopy,
      "remove_caption": this.removeCaption,
    };
  }

  static const CONSTRUCTOR = 'inputMessageForwarded';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}