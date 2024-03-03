part of '../tdapi.dart';

/// **ImportContacts** *(importContacts)* - TDLib function
///
/// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
///
/// * [contacts]: The list of contacts to import or edit; contacts' vCard are ignored and are not imported.
///
/// [ImportedContacts] is returned on completion.
final class ImportContacts extends TdFunction {
  /// **ImportContacts** *(importContacts)* - TDLib function
  ///
  /// Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
  ///
  /// * [contacts]: The list of contacts to import or edit; contacts' vCard are ignored and are not imported.
  ///
  /// [ImportedContacts] is returned on completion.
  const ImportContacts({
    required this.contacts,
  });

  /// The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  final List<Contact> contacts;

  /// Convert model to TDLib JSON format
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": defaultObjectId,
      "contacts": contacts.map((i) => i.toJson()).toList(),
      "@extra": extra,
    };
  }

  /// Copy model with modified properties.
  ///
  /// Properties:
  /// * [contacts]: The list of contacts to import or edit; contacts' vCard are ignored and are not imported
  ImportContacts copyWith({
    List<Contact>? contacts,
  }) =>
      ImportContacts(
        contacts: contacts ?? this.contacts,
      );

  /// TDLib object type
  static const String defaultObjectId = 'importContacts';

  /// Convert model to TDLib JSON format, encoded into String.
  @override
  String toString() => jsonEncode(toJson());

  /// TDLib object type for current class instance
  @override
  String get currentObjectId => defaultObjectId;
}
