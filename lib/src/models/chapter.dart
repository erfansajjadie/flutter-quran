import 'package:quran/src/models/translated_name.dart';

class Chapter {
  int? id;
  String? revelationPlace;
  int? revelationOrder;
  bool? bismillahPre;
  String? nameSimple;
  String? nameComplex;
  String? nameArabic;
  int? versesCount;
  List<int>? pages;
  TranslatedName? translatedName;

  Chapter(
      {this.id,
        this.revelationPlace,
        this.revelationOrder,
        this.bismillahPre,
        this.nameSimple,
        this.nameComplex,
        this.nameArabic,
        this.versesCount,
        this.pages,
        this.translatedName});

  Chapter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    revelationPlace = json['revelation_place'];
    revelationOrder = json['revelation_order'];
    bismillahPre = json['bismillah_pre'];
    nameSimple = json['name_simple'];
    nameComplex = json['name_complex'];
    nameArabic = json['name_arabic'];
    versesCount = json['verses_count'];
    pages = json['pages'].cast<int>();
    translatedName = json['translated_name'] != null
        ? TranslatedName.fromJson(json['translated_name'])
        : null;
  }
}
