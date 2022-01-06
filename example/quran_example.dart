import 'dart:convert';

import 'package:quran/quran.dart';

Future<void> main() async {
  final quran = QuranBase(language: "en");

  // get all chapters list
  var chapters = await quran.getChapters();

  // get verses by chapter number
  var verses = await quran.gerVerseByChapter(1);



}


