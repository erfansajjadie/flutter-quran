import 'package:quran/src/models/chapter.dart';

class ChapterResponse {
  List<Chapter>? chapters;

  ChapterResponse({this.chapters});

  ChapterResponse.fromJson(Map<String, dynamic> json) {
    if (json['chapters'] != null) {
      chapters = <Chapter>[];
      json['chapters'].forEach((v) {
        chapters!.add(Chapter.fromJson(v));
      });
    }
  }

}



