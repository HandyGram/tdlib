part of '../tdapi.dart';

/// **PageBlock** *(pageBlock)* - parent
///
/// Describes a block of an instant view web page.
sealed class PageBlock extends TdObject {
  
  /// **PageBlock** *(pageBlock)* - parent
  ///
  /// Describes a block of an instant view web page.
  const PageBlock();
  
  /// a PageBlock return type can be :
  /// * [PageBlockTitle]
  /// * [PageBlockSubtitle]
  /// * [PageBlockAuthorDate]
  /// * [PageBlockHeader]
  /// * [PageBlockSubheader]
  /// * [PageBlockKicker]
  /// * [PageBlockParagraph]
  /// * [PageBlockPreformatted]
  /// * [PageBlockFooter]
  /// * [PageBlockDivider]
  /// * [PageBlockAnchor]
  /// * [PageBlockList]
  /// * [PageBlockBlockQuote]
  /// * [PageBlockPullQuote]
  /// * [PageBlockAnimation]
  /// * [PageBlockAudio]
  /// * [PageBlockPhoto]
  /// * [PageBlockVideo]
  /// * [PageBlockVoiceNote]
  /// * [PageBlockCover]
  /// * [PageBlockEmbedded]
  /// * [PageBlockEmbeddedPost]
  /// * [PageBlockCollage]
  /// * [PageBlockSlideshow]
  /// * [PageBlockChatLink]
  /// * [PageBlockTable]
  /// * [PageBlockDetails]
  /// * [PageBlockRelatedArticles]
  /// * [PageBlockMap]
  factory PageBlock.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PageBlockTitle.defaultObjectId:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.defaultObjectId:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.defaultObjectId:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.defaultObjectId:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.defaultObjectId:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.defaultObjectId:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.defaultObjectId:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.defaultObjectId:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.defaultObjectId:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.defaultObjectId:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.defaultObjectId:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.defaultObjectId:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.defaultObjectId:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.defaultObjectId:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.defaultObjectId:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.defaultObjectId:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.defaultObjectId:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.defaultObjectId:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.defaultObjectId:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.defaultObjectId:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.defaultObjectId:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.defaultObjectId:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.defaultObjectId:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.defaultObjectId:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.defaultObjectId:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.defaultObjectId:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.defaultObjectId:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.defaultObjectId:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.defaultObjectId:
        return PageBlockMap.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PageBlock)",
          json,
        );
    }
  }
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson();

  /// Copy instance with no modifications.
  PageBlock copyWith();

  /// TDLib object type
  static const String defaultObjectId = 'pageBlock';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockTitle** *(pageBlockTitle)* - child of PageBlock
///
/// The title of a page.
///
/// * [title]: Title.
final class PageBlockTitle extends PageBlock {
  
  /// **PageBlockTitle** *(pageBlockTitle)* - child of PageBlock
  ///
  /// The title of a page.
  ///
  /// * [title]: Title.
  const PageBlockTitle({
    required this.title,
  });
  
  /// Title
  final RichText title;
  
  /// Parse from a json
  factory PageBlockTitle.fromJson(Map<String, dynamic> json) => PageBlockTitle(
    title: RichText.fromJson(json['title']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Title
  @override
  PageBlockTitle copyWith({
    RichText? title,
  }) => PageBlockTitle(
    title: title ?? this.title,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockTitle';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockSubtitle** *(pageBlockSubtitle)* - child of PageBlock
///
/// The subtitle of a page.
///
/// * [subtitle]: Subtitle.
final class PageBlockSubtitle extends PageBlock {
  
  /// **PageBlockSubtitle** *(pageBlockSubtitle)* - child of PageBlock
  ///
  /// The subtitle of a page.
  ///
  /// * [subtitle]: Subtitle.
  const PageBlockSubtitle({
    required this.subtitle,
  });
  
  /// Subtitle
  final RichText subtitle;
  
  /// Parse from a json
  factory PageBlockSubtitle.fromJson(Map<String, dynamic> json) => PageBlockSubtitle(
    subtitle: RichText.fromJson(json['subtitle']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "subtitle": subtitle.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [subtitle]: Subtitle
  @override
  PageBlockSubtitle copyWith({
    RichText? subtitle,
  }) => PageBlockSubtitle(
    subtitle: subtitle ?? this.subtitle,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockSubtitle';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockAuthorDate** *(pageBlockAuthorDate)* - child of PageBlock
///
/// The author and publishing date of a page.
///
/// * [author]: Author.
/// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
final class PageBlockAuthorDate extends PageBlock {
  
  /// **PageBlockAuthorDate** *(pageBlockAuthorDate)* - child of PageBlock
  ///
  /// The author and publishing date of a page.
  ///
  /// * [author]: Author.
  /// * [publishDate]: Point in time (Unix timestamp) when the article was published; 0 if unknown.
  const PageBlockAuthorDate({
    required this.author,
    required this.publishDate,
  });
  
  /// Author 
  final RichText author;

  /// Point in time (Unix timestamp) when the article was published; 0 if unknown
  final int publishDate;
  
  /// Parse from a json
  factory PageBlockAuthorDate.fromJson(Map<String, dynamic> json) => PageBlockAuthorDate(
    author: RichText.fromJson(json['author']),
    publishDate: json['publish_date'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "author": author.toJson(),
      "publish_date": publishDate,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [author]: Author 
  /// * [publish_date]: Point in time (Unix timestamp) when the article was published; 0 if unknown
  @override
  PageBlockAuthorDate copyWith({
    RichText? author,
    int? publishDate,
  }) => PageBlockAuthorDate(
    author: author ?? this.author,
    publishDate: publishDate ?? this.publishDate,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockAuthorDate';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockHeader** *(pageBlockHeader)* - child of PageBlock
///
/// A header.
///
/// * [header]: Header.
final class PageBlockHeader extends PageBlock {
  
  /// **PageBlockHeader** *(pageBlockHeader)* - child of PageBlock
  ///
  /// A header.
  ///
  /// * [header]: Header.
  const PageBlockHeader({
    required this.header,
  });
  
  /// Header
  final RichText header;
  
  /// Parse from a json
  factory PageBlockHeader.fromJson(Map<String, dynamic> json) => PageBlockHeader(
    header: RichText.fromJson(json['header']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "header": header.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [header]: Header
  @override
  PageBlockHeader copyWith({
    RichText? header,
  }) => PageBlockHeader(
    header: header ?? this.header,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockHeader';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockSubheader** *(pageBlockSubheader)* - child of PageBlock
///
/// A subheader.
///
/// * [subheader]: Subheader.
final class PageBlockSubheader extends PageBlock {
  
  /// **PageBlockSubheader** *(pageBlockSubheader)* - child of PageBlock
  ///
  /// A subheader.
  ///
  /// * [subheader]: Subheader.
  const PageBlockSubheader({
    required this.subheader,
  });
  
  /// Subheader
  final RichText subheader;
  
  /// Parse from a json
  factory PageBlockSubheader.fromJson(Map<String, dynamic> json) => PageBlockSubheader(
    subheader: RichText.fromJson(json['subheader']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "subheader": subheader.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [subheader]: Subheader
  @override
  PageBlockSubheader copyWith({
    RichText? subheader,
  }) => PageBlockSubheader(
    subheader: subheader ?? this.subheader,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockSubheader';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockKicker** *(pageBlockKicker)* - child of PageBlock
///
/// A kicker.
///
/// * [kicker]: Kicker.
final class PageBlockKicker extends PageBlock {
  
  /// **PageBlockKicker** *(pageBlockKicker)* - child of PageBlock
  ///
  /// A kicker.
  ///
  /// * [kicker]: Kicker.
  const PageBlockKicker({
    required this.kicker,
  });
  
  /// Kicker
  final RichText kicker;
  
  /// Parse from a json
  factory PageBlockKicker.fromJson(Map<String, dynamic> json) => PageBlockKicker(
    kicker: RichText.fromJson(json['kicker']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "kicker": kicker.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [kicker]: Kicker
  @override
  PageBlockKicker copyWith({
    RichText? kicker,
  }) => PageBlockKicker(
    kicker: kicker ?? this.kicker,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockKicker';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockParagraph** *(pageBlockParagraph)* - child of PageBlock
///
/// A text paragraph.
///
/// * [text]: Paragraph text.
final class PageBlockParagraph extends PageBlock {
  
  /// **PageBlockParagraph** *(pageBlockParagraph)* - child of PageBlock
  ///
  /// A text paragraph.
  ///
  /// * [text]: Paragraph text.
  const PageBlockParagraph({
    required this.text,
  });
  
  /// Paragraph text
  final RichText text;
  
  /// Parse from a json
  factory PageBlockParagraph.fromJson(Map<String, dynamic> json) => PageBlockParagraph(
    text: RichText.fromJson(json['text']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Paragraph text
  @override
  PageBlockParagraph copyWith({
    RichText? text,
  }) => PageBlockParagraph(
    text: text ?? this.text,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockParagraph';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockPreformatted** *(pageBlockPreformatted)* - child of PageBlock
///
/// A preformatted text paragraph.
///
/// * [text]: Paragraph text.
/// * [language]: Programming language for which the text needs to be formatted.
final class PageBlockPreformatted extends PageBlock {
  
  /// **PageBlockPreformatted** *(pageBlockPreformatted)* - child of PageBlock
  ///
  /// A preformatted text paragraph.
  ///
  /// * [text]: Paragraph text.
  /// * [language]: Programming language for which the text needs to be formatted.
  const PageBlockPreformatted({
    required this.text,
    required this.language,
  });
  
  /// Paragraph text 
  final RichText text;

  /// Programming language for which the text needs to be formatted
  final String language;
  
  /// Parse from a json
  factory PageBlockPreformatted.fromJson(Map<String, dynamic> json) => PageBlockPreformatted(
    text: RichText.fromJson(json['text']),
    language: json['language'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text.toJson(),
      "language": language,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Paragraph text 
  /// * [language]: Programming language for which the text needs to be formatted
  @override
  PageBlockPreformatted copyWith({
    RichText? text,
    String? language,
  }) => PageBlockPreformatted(
    text: text ?? this.text,
    language: language ?? this.language,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockPreformatted';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockFooter** *(pageBlockFooter)* - child of PageBlock
///
/// The footer of a page.
///
/// * [footer]: Footer.
final class PageBlockFooter extends PageBlock {
  
  /// **PageBlockFooter** *(pageBlockFooter)* - child of PageBlock
  ///
  /// The footer of a page.
  ///
  /// * [footer]: Footer.
  const PageBlockFooter({
    required this.footer,
  });
  
  /// Footer
  final RichText footer;
  
  /// Parse from a json
  factory PageBlockFooter.fromJson(Map<String, dynamic> json) => PageBlockFooter(
    footer: RichText.fromJson(json['footer']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "footer": footer.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [footer]: Footer
  @override
  PageBlockFooter copyWith({
    RichText? footer,
  }) => PageBlockFooter(
    footer: footer ?? this.footer,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockFooter';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockDivider** *(pageBlockDivider)* - child of PageBlock
///
/// An empty block separating a page.
final class PageBlockDivider extends PageBlock {
  
  /// **PageBlockDivider** *(pageBlockDivider)* - child of PageBlock
  ///
  /// An empty block separating a page.
  const PageBlockDivider();
  
  /// Parse from a json
  factory PageBlockDivider.fromJson(Map<String, dynamic> json) => const PageBlockDivider();
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
		};
	}

  /// Copy instance with no modifications.
  @override
  PageBlockDivider copyWith() => const PageBlockDivider();

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockDivider';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockAnchor** *(pageBlockAnchor)* - child of PageBlock
///
/// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
///
/// * [name]: Name of the anchor.
final class PageBlockAnchor extends PageBlock {
  
  /// **PageBlockAnchor** *(pageBlockAnchor)* - child of PageBlock
  ///
  /// An invisible anchor on a page, which can be used in a URL to open the page from the specified anchor.
  ///
  /// * [name]: Name of the anchor.
  const PageBlockAnchor({
    required this.name,
  });
  
  /// Name of the anchor
  final String name;
  
  /// Parse from a json
  factory PageBlockAnchor.fromJson(Map<String, dynamic> json) => PageBlockAnchor(
    name: json['name'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "name": name,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [name]: Name of the anchor
  @override
  PageBlockAnchor copyWith({
    String? name,
  }) => PageBlockAnchor(
    name: name ?? this.name,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockAnchor';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockList** *(pageBlockList)* - child of PageBlock
///
/// A list of data blocks.
///
/// * [items]: The items of the list.
final class PageBlockList extends PageBlock {
  
  /// **PageBlockList** *(pageBlockList)* - child of PageBlock
  ///
  /// A list of data blocks.
  ///
  /// * [items]: The items of the list.
  const PageBlockList({
    required this.items,
  });
  
  /// The items of the list
  final List<PageBlockListItem> items;
  
  /// Parse from a json
  factory PageBlockList.fromJson(Map<String, dynamic> json) => PageBlockList(
    items: List<PageBlockListItem>.from((json['items'] ?? []).map((item) => PageBlockListItem.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "items": items.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [items]: The items of the list
  @override
  PageBlockList copyWith({
    List<PageBlockListItem>? items,
  }) => PageBlockList(
    items: items ?? this.items,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockList';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockBlockQuote** *(pageBlockBlockQuote)* - child of PageBlock
///
/// A block quote.
///
/// * [text]: Quote text.
/// * [credit]: Quote credit.
final class PageBlockBlockQuote extends PageBlock {
  
  /// **PageBlockBlockQuote** *(pageBlockBlockQuote)* - child of PageBlock
  ///
  /// A block quote.
  ///
  /// * [text]: Quote text.
  /// * [credit]: Quote credit.
  const PageBlockBlockQuote({
    required this.text,
    required this.credit,
  });
  
  /// Quote text
  final RichText text;

  /// Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockBlockQuote.fromJson(Map<String, dynamic> json) => PageBlockBlockQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text.toJson(),
      "credit": credit.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Quote text
  /// * [credit]: Quote credit
  @override
  PageBlockBlockQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockBlockQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockBlockQuote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockPullQuote** *(pageBlockPullQuote)* - child of PageBlock
///
/// A pull quote.
///
/// * [text]: Quote text.
/// * [credit]: Quote credit.
final class PageBlockPullQuote extends PageBlock {
  
  /// **PageBlockPullQuote** *(pageBlockPullQuote)* - child of PageBlock
  ///
  /// A pull quote.
  ///
  /// * [text]: Quote text.
  /// * [credit]: Quote credit.
  const PageBlockPullQuote({
    required this.text,
    required this.credit,
  });
  
  /// Quote text
  final RichText text;

  /// Quote credit
  final RichText credit;
  
  /// Parse from a json
  factory PageBlockPullQuote.fromJson(Map<String, dynamic> json) => PageBlockPullQuote(
    text: RichText.fromJson(json['text']),
    credit: RichText.fromJson(json['credit']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "text": text.toJson(),
      "credit": credit.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [text]: Quote text
  /// * [credit]: Quote credit
  @override
  PageBlockPullQuote copyWith({
    RichText? text,
    RichText? credit,
  }) => PageBlockPullQuote(
    text: text ?? this.text,
    credit: credit ?? this.credit,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockPullQuote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockAnimation** *(pageBlockAnimation)* - child of PageBlock
///
/// An animation.
///
/// * [animation]: Animation file; may be null *(optional)*.
/// * [caption]: Animation caption.
/// * [needAutoplay]: True, if the animation must be played automatically.
final class PageBlockAnimation extends PageBlock {
  
  /// **PageBlockAnimation** *(pageBlockAnimation)* - child of PageBlock
  ///
  /// An animation.
  ///
  /// * [animation]: Animation file; may be null *(optional)*.
  /// * [caption]: Animation caption.
  /// * [needAutoplay]: True, if the animation must be played automatically.
  const PageBlockAnimation({
    this.animation,
    required this.caption,
    required this.needAutoplay,
  });
  
  /// Animation file; may be null
  final Animation? animation;

  /// Animation caption
  final PageBlockCaption caption;

  /// True, if the animation must be played automatically
  final bool needAutoplay;
  
  /// Parse from a json
  factory PageBlockAnimation.fromJson(Map<String, dynamic> json) => PageBlockAnimation(
    animation: json['animation'] == null ? null : Animation.fromJson(json['animation']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "animation": animation?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [animation]: Animation file; may be null
  /// * [caption]: Animation caption
  /// * [need_autoplay]: True, if the animation must be played automatically
  @override
  PageBlockAnimation copyWith({
    Animation? animation,
    PageBlockCaption? caption,
    bool? needAutoplay,
  }) => PageBlockAnimation(
    animation: animation ?? this.animation,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockAnimation';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockAudio** *(pageBlockAudio)* - child of PageBlock
///
/// An audio file.
///
/// * [audio]: Audio file; may be null *(optional)*.
/// * [caption]: Audio file caption.
final class PageBlockAudio extends PageBlock {
  
  /// **PageBlockAudio** *(pageBlockAudio)* - child of PageBlock
  ///
  /// An audio file.
  ///
  /// * [audio]: Audio file; may be null *(optional)*.
  /// * [caption]: Audio file caption.
  const PageBlockAudio({
    this.audio,
    required this.caption,
  });
  
  /// Audio file; may be null
  final Audio? audio;

  /// Audio file caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockAudio.fromJson(Map<String, dynamic> json) => PageBlockAudio(
    audio: json['audio'] == null ? null : Audio.fromJson(json['audio']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "audio": audio?.toJson(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [audio]: Audio file; may be null
  /// * [caption]: Audio file caption
  @override
  PageBlockAudio copyWith({
    Audio? audio,
    PageBlockCaption? caption,
  }) => PageBlockAudio(
    audio: audio ?? this.audio,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockAudio';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockPhoto** *(pageBlockPhoto)* - child of PageBlock
///
/// A photo.
///
/// * [photo]: Photo file; may be null *(optional)*.
/// * [caption]: Photo caption.
/// * [url]: URL that needs to be opened when the photo is clicked.
final class PageBlockPhoto extends PageBlock {
  
  /// **PageBlockPhoto** *(pageBlockPhoto)* - child of PageBlock
  ///
  /// A photo.
  ///
  /// * [photo]: Photo file; may be null *(optional)*.
  /// * [caption]: Photo caption.
  /// * [url]: URL that needs to be opened when the photo is clicked.
  const PageBlockPhoto({
    this.photo,
    required this.caption,
    required this.url,
  });
  
  /// Photo file; may be null
  final Photo? photo;

  /// Photo caption
  final PageBlockCaption caption;

  /// URL that needs to be opened when the photo is clicked
  final String url;
  
  /// Parse from a json
  factory PageBlockPhoto.fromJson(Map<String, dynamic> json) => PageBlockPhoto(
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
    caption: PageBlockCaption.fromJson(json['caption']),
    url: json['url'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "photo": photo?.toJson(),
      "caption": caption.toJson(),
      "url": url,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [photo]: Photo file; may be null
  /// * [caption]: Photo caption
  /// * [url]: URL that needs to be opened when the photo is clicked
  @override
  PageBlockPhoto copyWith({
    Photo? photo,
    PageBlockCaption? caption,
    String? url,
  }) => PageBlockPhoto(
    photo: photo ?? this.photo,
    caption: caption ?? this.caption,
    url: url ?? this.url,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockPhoto';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockVideo** *(pageBlockVideo)* - child of PageBlock
///
/// A video.
///
/// * [video]: Video file; may be null *(optional)*.
/// * [caption]: Video caption.
/// * [needAutoplay]: True, if the video must be played automatically.
/// * [isLooped]: True, if the video must be looped.
final class PageBlockVideo extends PageBlock {
  
  /// **PageBlockVideo** *(pageBlockVideo)* - child of PageBlock
  ///
  /// A video.
  ///
  /// * [video]: Video file; may be null *(optional)*.
  /// * [caption]: Video caption.
  /// * [needAutoplay]: True, if the video must be played automatically.
  /// * [isLooped]: True, if the video must be looped.
  const PageBlockVideo({
    this.video,
    required this.caption,
    required this.needAutoplay,
    required this.isLooped,
  });
  
  /// Video file; may be null
  final Video? video;

  /// Video caption
  final PageBlockCaption caption;

  /// True, if the video must be played automatically
  final bool needAutoplay;

  /// True, if the video must be looped
  final bool isLooped;
  
  /// Parse from a json
  factory PageBlockVideo.fromJson(Map<String, dynamic> json) => PageBlockVideo(
    video: json['video'] == null ? null : Video.fromJson(json['video']),
    caption: PageBlockCaption.fromJson(json['caption']),
    needAutoplay: json['need_autoplay'],
    isLooped: json['is_looped'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "video": video?.toJson(),
      "caption": caption.toJson(),
      "need_autoplay": needAutoplay,
      "is_looped": isLooped,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [video]: Video file; may be null
  /// * [caption]: Video caption
  /// * [need_autoplay]: True, if the video must be played automatically
  /// * [is_looped]: True, if the video must be looped
  @override
  PageBlockVideo copyWith({
    Video? video,
    PageBlockCaption? caption,
    bool? needAutoplay,
    bool? isLooped,
  }) => PageBlockVideo(
    video: video ?? this.video,
    caption: caption ?? this.caption,
    needAutoplay: needAutoplay ?? this.needAutoplay,
    isLooped: isLooped ?? this.isLooped,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockVideo';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockVoiceNote** *(pageBlockVoiceNote)* - child of PageBlock
///
/// A voice note.
///
/// * [voiceNote]: Voice note; may be null *(optional)*.
/// * [caption]: Voice note caption.
final class PageBlockVoiceNote extends PageBlock {
  
  /// **PageBlockVoiceNote** *(pageBlockVoiceNote)* - child of PageBlock
  ///
  /// A voice note.
  ///
  /// * [voiceNote]: Voice note; may be null *(optional)*.
  /// * [caption]: Voice note caption.
  const PageBlockVoiceNote({
    this.voiceNote,
    required this.caption,
  });
  
  /// Voice note; may be null
  final VoiceNote? voiceNote;

  /// Voice note caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockVoiceNote.fromJson(Map<String, dynamic> json) => PageBlockVoiceNote(
    voiceNote: json['voice_note'] == null ? null : VoiceNote.fromJson(json['voice_note']),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "voice_note": voiceNote?.toJson(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [voice_note]: Voice note; may be null
  /// * [caption]: Voice note caption
  @override
  PageBlockVoiceNote copyWith({
    VoiceNote? voiceNote,
    PageBlockCaption? caption,
  }) => PageBlockVoiceNote(
    voiceNote: voiceNote ?? this.voiceNote,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockVoiceNote';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockCover** *(pageBlockCover)* - child of PageBlock
///
/// A page cover.
///
/// * [cover]: Cover.
final class PageBlockCover extends PageBlock {
  
  /// **PageBlockCover** *(pageBlockCover)* - child of PageBlock
  ///
  /// A page cover.
  ///
  /// * [cover]: Cover.
  const PageBlockCover({
    required this.cover,
  });
  
  /// Cover
  final PageBlock cover;
  
  /// Parse from a json
  factory PageBlockCover.fromJson(Map<String, dynamic> json) => PageBlockCover(
    cover: PageBlock.fromJson(json['cover']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "cover": cover.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [cover]: Cover
  @override
  PageBlockCover copyWith({
    PageBlock? cover,
  }) => PageBlockCover(
    cover: cover ?? this.cover,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockCover';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockEmbedded** *(pageBlockEmbedded)* - child of PageBlock
///
/// An embedded web page.
///
/// * [url]: Web page URL, if available.
/// * [html]: HTML-markup of the embedded page.
/// * [posterPhoto]: Poster photo, if available; may be null *(optional)*.
/// * [width]: Block width; 0 if unknown.
/// * [height]: Block height; 0 if unknown.
/// * [caption]: Block caption.
/// * [isFullWidth]: True, if the block must be full width.
/// * [allowScrolling]: True, if scrolling needs to be allowed.
final class PageBlockEmbedded extends PageBlock {
  
  /// **PageBlockEmbedded** *(pageBlockEmbedded)* - child of PageBlock
  ///
  /// An embedded web page.
  ///
  /// * [url]: Web page URL, if available.
  /// * [html]: HTML-markup of the embedded page.
  /// * [posterPhoto]: Poster photo, if available; may be null *(optional)*.
  /// * [width]: Block width; 0 if unknown.
  /// * [height]: Block height; 0 if unknown.
  /// * [caption]: Block caption.
  /// * [isFullWidth]: True, if the block must be full width.
  /// * [allowScrolling]: True, if scrolling needs to be allowed.
  const PageBlockEmbedded({
    required this.url,
    required this.html,
    this.posterPhoto,
    required this.width,
    required this.height,
    required this.caption,
    required this.isFullWidth,
    required this.allowScrolling,
  });
  
  /// Web page URL, if available
  final String url;

  /// HTML-markup of the embedded page
  final String html;

  /// Poster photo, if available; may be null
  final Photo? posterPhoto;

  /// Block width; 0 if unknown
  final int width;

  /// Block height; 0 if unknown
  final int height;

  /// Block caption
  final PageBlockCaption caption;

  /// True, if the block must be full width
  final bool isFullWidth;

  /// True, if scrolling needs to be allowed
  final bool allowScrolling;
  
  /// Parse from a json
  factory PageBlockEmbedded.fromJson(Map<String, dynamic> json) => PageBlockEmbedded(
    url: json['url'],
    html: json['html'],
    posterPhoto: json['poster_photo'] == null ? null : Photo.fromJson(json['poster_photo']),
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
    isFullWidth: json['is_full_width'],
    allowScrolling: json['allow_scrolling'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "url": url,
      "html": html,
      "poster_photo": posterPhoto?.toJson(),
      "width": width,
      "height": height,
      "caption": caption.toJson(),
      "is_full_width": isFullWidth,
      "allow_scrolling": allowScrolling,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: Web page URL, if available
  /// * [html]: HTML-markup of the embedded page
  /// * [poster_photo]: Poster photo, if available; may be null
  /// * [width]: Block width; 0 if unknown
  /// * [height]: Block height; 0 if unknown
  /// * [caption]: Block caption
  /// * [is_full_width]: True, if the block must be full width
  /// * [allow_scrolling]: True, if scrolling needs to be allowed
  @override
  PageBlockEmbedded copyWith({
    String? url,
    String? html,
    Photo? posterPhoto,
    int? width,
    int? height,
    PageBlockCaption? caption,
    bool? isFullWidth,
    bool? allowScrolling,
  }) => PageBlockEmbedded(
    url: url ?? this.url,
    html: html ?? this.html,
    posterPhoto: posterPhoto ?? this.posterPhoto,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
    isFullWidth: isFullWidth ?? this.isFullWidth,
    allowScrolling: allowScrolling ?? this.allowScrolling,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockEmbedded';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockEmbeddedPost** *(pageBlockEmbeddedPost)* - child of PageBlock
///
/// An embedded post.
///
/// * [url]: Web page URL.
/// * [author]: Post author.
/// * [authorPhoto]: Post author photo; may be null *(optional)*.
/// * [date]: Point in time (Unix timestamp) when the post was created; 0 if unknown.
/// * [pageBlocks]: Post content.
/// * [caption]: Post caption.
final class PageBlockEmbeddedPost extends PageBlock {
  
  /// **PageBlockEmbeddedPost** *(pageBlockEmbeddedPost)* - child of PageBlock
  ///
  /// An embedded post.
  ///
  /// * [url]: Web page URL.
  /// * [author]: Post author.
  /// * [authorPhoto]: Post author photo; may be null *(optional)*.
  /// * [date]: Point in time (Unix timestamp) when the post was created; 0 if unknown.
  /// * [pageBlocks]: Post content.
  /// * [caption]: Post caption.
  const PageBlockEmbeddedPost({
    required this.url,
    required this.author,
    this.authorPhoto,
    required this.date,
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Web page URL
  final String url;

  /// Post author
  final String author;

  /// Post author photo; may be null
  final Photo? authorPhoto;

  /// Point in time (Unix timestamp) when the post was created; 0 if unknown
  final int date;

  /// Post content
  final List<PageBlock> pageBlocks;

  /// Post caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) => PageBlockEmbeddedPost(
    url: json['url'],
    author: json['author'],
    authorPhoto: json['author_photo'] == null ? null : Photo.fromJson(json['author_photo']),
    date: json['date'],
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "url": url,
      "author": author,
      "author_photo": authorPhoto?.toJson(),
      "date": date,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [url]: Web page URL
  /// * [author]: Post author
  /// * [author_photo]: Post author photo; may be null
  /// * [date]: Point in time (Unix timestamp) when the post was created; 0 if unknown
  /// * [page_blocks]: Post content
  /// * [caption]: Post caption
  @override
  PageBlockEmbeddedPost copyWith({
    String? url,
    String? author,
    Photo? authorPhoto,
    int? date,
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockEmbeddedPost(
    url: url ?? this.url,
    author: author ?? this.author,
    authorPhoto: authorPhoto ?? this.authorPhoto,
    date: date ?? this.date,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockEmbeddedPost';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockCollage** *(pageBlockCollage)* - child of PageBlock
///
/// A collage.
///
/// * [pageBlocks]: Collage item contents.
/// * [caption]: Block caption.
final class PageBlockCollage extends PageBlock {
  
  /// **PageBlockCollage** *(pageBlockCollage)* - child of PageBlock
  ///
  /// A collage.
  ///
  /// * [pageBlocks]: Collage item contents.
  /// * [caption]: Block caption.
  const PageBlockCollage({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Collage item contents
  final List<PageBlock> pageBlocks;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockCollage.fromJson(Map<String, dynamic> json) => PageBlockCollage(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [page_blocks]: Collage item contents
  /// * [caption]: Block caption
  @override
  PageBlockCollage copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockCollage(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockCollage';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockSlideshow** *(pageBlockSlideshow)* - child of PageBlock
///
/// A slideshow.
///
/// * [pageBlocks]: Slideshow item contents.
/// * [caption]: Block caption.
final class PageBlockSlideshow extends PageBlock {
  
  /// **PageBlockSlideshow** *(pageBlockSlideshow)* - child of PageBlock
  ///
  /// A slideshow.
  ///
  /// * [pageBlocks]: Slideshow item contents.
  /// * [caption]: Block caption.
  const PageBlockSlideshow({
    required this.pageBlocks,
    required this.caption,
  });
  
  /// Slideshow item contents
  final List<PageBlock> pageBlocks;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockSlideshow.fromJson(Map<String, dynamic> json) => PageBlockSlideshow(
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [page_blocks]: Slideshow item contents
  /// * [caption]: Block caption
  @override
  PageBlockSlideshow copyWith({
    List<PageBlock>? pageBlocks,
    PageBlockCaption? caption,
  }) => PageBlockSlideshow(
    pageBlocks: pageBlocks ?? this.pageBlocks,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockSlideshow';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockChatLink** *(pageBlockChatLink)* - child of PageBlock
///
/// A link to a chat.
///
/// * [title]: Chat title.
/// * [photo]: Chat photo; may be null *(optional)*.
/// * [accentColorId]: Identifier of the accent color for chat title and background of chat photo.
/// * [username]: Chat username by which all other information about the chat can be resolved.
final class PageBlockChatLink extends PageBlock {
  
  /// **PageBlockChatLink** *(pageBlockChatLink)* - child of PageBlock
  ///
  /// A link to a chat.
  ///
  /// * [title]: Chat title.
  /// * [photo]: Chat photo; may be null *(optional)*.
  /// * [accentColorId]: Identifier of the accent color for chat title and background of chat photo.
  /// * [username]: Chat username by which all other information about the chat can be resolved.
  const PageBlockChatLink({
    required this.title,
    this.photo,
    required this.accentColorId,
    required this.username,
  });
  
  /// Chat title
  final String title;

  /// Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// Identifier of the accent color for chat title and background of chat photo
  final int accentColorId;

  /// Chat username by which all other information about the chat can be resolved
  final String username;
  
  /// Parse from a json
  factory PageBlockChatLink.fromJson(Map<String, dynamic> json) => PageBlockChatLink(
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    accentColorId: json['accent_color_id'],
    username: json['username'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "title": title,
      "photo": photo?.toJson(),
      "accent_color_id": accentColorId,
      "username": username,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [title]: Chat title
  /// * [photo]: Chat photo; may be null
  /// * [accent_color_id]: Identifier of the accent color for chat title and background of chat photo
  /// * [username]: Chat username by which all other information about the chat can be resolved
  @override
  PageBlockChatLink copyWith({
    String? title,
    ChatPhotoInfo? photo,
    int? accentColorId,
    String? username,
  }) => PageBlockChatLink(
    title: title ?? this.title,
    photo: photo ?? this.photo,
    accentColorId: accentColorId ?? this.accentColorId,
    username: username ?? this.username,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockChatLink';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockTable** *(pageBlockTable)* - child of PageBlock
///
/// A table.
///
/// * [caption]: Table caption.
/// * [cells]: Table cells.
/// * [isBordered]: True, if the table is bordered.
/// * [isStriped]: True, if the table is striped.
final class PageBlockTable extends PageBlock {
  
  /// **PageBlockTable** *(pageBlockTable)* - child of PageBlock
  ///
  /// A table.
  ///
  /// * [caption]: Table caption.
  /// * [cells]: Table cells.
  /// * [isBordered]: True, if the table is bordered.
  /// * [isStriped]: True, if the table is striped.
  const PageBlockTable({
    required this.caption,
    required this.cells,
    required this.isBordered,
    required this.isStriped,
  });
  
  /// Table caption
  final RichText caption;

  /// Table cells
  final List<List<PageBlockTableCell>> cells;

  /// True, if the table is bordered
  final bool isBordered;

  /// True, if the table is striped
  final bool isStriped;
  
  /// Parse from a json
  factory PageBlockTable.fromJson(Map<String, dynamic> json) => PageBlockTable(
    caption: RichText.fromJson(json['caption']),
    cells: List<List<PageBlockTableCell>>.from((json['cells'] ?? []).map((item) => List<PageBlockTableCell>.from((item ?? []).map((innerItem) => PageBlockTableCell.fromJson(innerItem)).toList())).toList()),
    isBordered: json['is_bordered'],
    isStriped: json['is_striped'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "caption": caption.toJson(),
      "cells": cells.map((i) => i.map((ii) => ii.toJson()).toList()).toList(),
      "is_bordered": isBordered,
      "is_striped": isStriped,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [caption]: Table caption
  /// * [cells]: Table cells
  /// * [is_bordered]: True, if the table is bordered
  /// * [is_striped]: True, if the table is striped
  @override
  PageBlockTable copyWith({
    RichText? caption,
    List<List<PageBlockTableCell>>? cells,
    bool? isBordered,
    bool? isStriped,
  }) => PageBlockTable(
    caption: caption ?? this.caption,
    cells: cells ?? this.cells,
    isBordered: isBordered ?? this.isBordered,
    isStriped: isStriped ?? this.isStriped,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockTable';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockDetails** *(pageBlockDetails)* - child of PageBlock
///
/// A collapsible block.
///
/// * [header]: Always visible heading for the block.
/// * [pageBlocks]: Block contents.
/// * [isOpen]: True, if the block is open by default.
final class PageBlockDetails extends PageBlock {
  
  /// **PageBlockDetails** *(pageBlockDetails)* - child of PageBlock
  ///
  /// A collapsible block.
  ///
  /// * [header]: Always visible heading for the block.
  /// * [pageBlocks]: Block contents.
  /// * [isOpen]: True, if the block is open by default.
  const PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });
  
  /// Always visible heading for the block
  final RichText header;

  /// Block contents
  final List<PageBlock> pageBlocks;

  /// True, if the block is open by default
  final bool isOpen;
  
  /// Parse from a json
  factory PageBlockDetails.fromJson(Map<String, dynamic> json) => PageBlockDetails(
    header: RichText.fromJson(json['header']),
    pageBlocks: List<PageBlock>.from((json['page_blocks'] ?? []).map((item) => PageBlock.fromJson(item)).toList()),
    isOpen: json['is_open'],
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "header": header.toJson(),
      "page_blocks": pageBlocks.map((i) => i.toJson()).toList(),
      "is_open": isOpen,
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [header]: Always visible heading for the block
  /// * [page_blocks]: Block contents
  /// * [is_open]: True, if the block is open by default
  @override
  PageBlockDetails copyWith({
    RichText? header,
    List<PageBlock>? pageBlocks,
    bool? isOpen,
  }) => PageBlockDetails(
    header: header ?? this.header,
    pageBlocks: pageBlocks ?? this.pageBlocks,
    isOpen: isOpen ?? this.isOpen,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockDetails';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockRelatedArticles** *(pageBlockRelatedArticles)* - child of PageBlock
///
/// Related articles.
///
/// * [header]: Block header.
/// * [articles]: List of related articles.
final class PageBlockRelatedArticles extends PageBlock {
  
  /// **PageBlockRelatedArticles** *(pageBlockRelatedArticles)* - child of PageBlock
  ///
  /// Related articles.
  ///
  /// * [header]: Block header.
  /// * [articles]: List of related articles.
  const PageBlockRelatedArticles({
    required this.header,
    required this.articles,
  });
  
  /// Block header
  final RichText header;

  /// List of related articles
  final List<PageBlockRelatedArticle> articles;
  
  /// Parse from a json
  factory PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) => PageBlockRelatedArticles(
    header: RichText.fromJson(json['header']),
    articles: List<PageBlockRelatedArticle>.from((json['articles'] ?? []).map((item) => PageBlockRelatedArticle.fromJson(item)).toList()),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "header": header.toJson(),
      "articles": articles.map((i) => i.toJson()).toList(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [header]: Block header
  /// * [articles]: List of related articles
  @override
  PageBlockRelatedArticles copyWith({
    RichText? header,
    List<PageBlockRelatedArticle>? articles,
  }) => PageBlockRelatedArticles(
    header: header ?? this.header,
    articles: articles ?? this.articles,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockRelatedArticles';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}


/// **PageBlockMap** *(pageBlockMap)* - child of PageBlock
///
/// A map.
///
/// * [location]: Location of the map center.
/// * [zoom]: Map zoom level.
/// * [width]: Map width.
/// * [height]: Map height.
/// * [caption]: Block caption.
final class PageBlockMap extends PageBlock {
  
  /// **PageBlockMap** *(pageBlockMap)* - child of PageBlock
  ///
  /// A map.
  ///
  /// * [location]: Location of the map center.
  /// * [zoom]: Map zoom level.
  /// * [width]: Map width.
  /// * [height]: Map height.
  /// * [caption]: Block caption.
  const PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });
  
  /// Location of the map center
  final Location location;

  /// Map zoom level
  final int zoom;

  /// Map width
  final int width;

  /// Map height
  final int height;

  /// Block caption
  final PageBlockCaption caption;
  
  /// Parse from a json
  factory PageBlockMap.fromJson(Map<String, dynamic> json) => PageBlockMap(
    location: Location.fromJson(json['location']),
    zoom: json['zoom'],
    width: json['width'],
    height: json['height'],
    caption: PageBlockCaption.fromJson(json['caption']),
  );
  
  
  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": defaultObjectId,
      "location": location.toJson(),
      "zoom": zoom,
      "width": width,
      "height": height,
      "caption": caption.toJson(),
		};
	}

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [location]: Location of the map center
  /// * [zoom]: Map zoom level
  /// * [width]: Map width
  /// * [height]: Map height
  /// * [caption]: Block caption
  @override
  PageBlockMap copyWith({
    Location? location,
    int? zoom,
    int? width,
    int? height,
    PageBlockCaption? caption,
  }) => PageBlockMap(
    location: location ?? this.location,
    zoom: zoom ?? this.zoom,
    width: width ?? this.width,
    height: height ?? this.height,
    caption: caption ?? this.caption,
  );

  /// TDLib object type
  static const String defaultObjectId = 'pageBlockMap';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
