
import 'package:quran/src/api_service.dart';
import 'package:quran/src/models/chapter.dart';
import 'package:quran/src/models/verse.dart';

class QuranBase {
  final String language;

  // initialize api service
  late final ApiService _apiService;

  QuranBase({this.language = "en"}) {
    _apiService = ApiService(language: language);
  }

  Future<List<Chapter>?> getChapters () async {
    return await _apiService.getChapters();
  }

  Future <List<Verse>?> gerVerseByChapter (int chapterId) async {
    return await _apiService.getVerseByChapter(chapterId);
  }

}



