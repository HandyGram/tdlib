part of '../tdapi.dart';

class GetTrendingStickerSets extends TdFunction {
  /// Returns a list of trending sticker sets. For the optimal performance the number of returned sticker sets is chosen by the library
  GetTrendingStickerSets({this.offset, this.limit});

  /// [offset] The offset from which to return the sticker sets; must be non-negative
  int offset;

  /// [limit] The maximum number of sticker sets to be returned; must be non-negative. Fewer sticker sets may be returned than specified by the limit, even if the end of the list has not been reached
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  GetTrendingStickerSets.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
