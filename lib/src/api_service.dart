import 'dart:io';

import 'package:quran/src/models/chapter.dart';
import 'package:quran/src/models/verse.dart';
import 'package:quran/src/responses/chapter_response.dart';
import 'package:quran/src/responses/verse_response.dart';
import 'package:quran/src/rest_config.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


class ApiService {

  final String language;

  ApiService({required this.language});

  Future<List<Chapter>?> getChapters() async {
    var url = Uri.parse("${RestConfig.chaptersUrl}?language=$language");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonResponse);
      return ChapterResponse.fromJson(jsonResponse).chapters;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<List<Verse>?> getVerseByChapter(int chapterId) async {
    var url = Uri.parse("${RestConfig.verseByChapter}$chapterId?language=$language&translations=131&fields=text_uthmani&page=1&per_page=2000");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonResponse);
      return VerseResponse.fromJson(jsonResponse).verses;
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

}