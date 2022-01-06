import 'package:quran/src/models/verse.dart';

class VerseResponse {
  List<Verse>? verses;

  VerseResponse({this.verses});

  VerseResponse.fromJson(Map<String, dynamic> json) {
    if (json['verses'] != null) {
      verses = <Verse>[];
      json['verses'].forEach((v) {
        verses!.add(Verse.fromJson(v));
      });
    }
  }
}




