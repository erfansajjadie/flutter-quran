import 'package:quran/src/models/translation.dart';

class Verse {
  int? id;
  int? verseNumber;
  String? verseKey;
  int? juzNumber;
  int? hizbNumber;
  int? rubNumber;
  Null? sajdahType;
  Null? sajdahNumber;
  String? textUthmani;
  int? pageNumber;
  List<Translation>? translations;

  Verse(
      {this.id,
        this.verseNumber,
        this.verseKey,
        this.juzNumber,
        this.hizbNumber,
        this.rubNumber,
        this.sajdahType,
        this.sajdahNumber,
        this.textUthmani,
        this.pageNumber,
        this.translations});

  Verse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    verseNumber = json['verse_number'];
    verseKey = json['verse_key'];
    juzNumber = json['juz_number'];
    hizbNumber = json['hizb_number'];
    rubNumber = json['rub_number'];
    sajdahType = json['sajdah_type'];
    sajdahNumber = json['sajdah_number'];
    textUthmani = json['text_uthmani'];
    pageNumber = json['page_number'];
    if (json['translations'] != null) {
      translations = <Translation>[];
      json['translations'].forEach((v) {
        translations!.add(Translation.fromJson(v));
      });
    }
  }

}