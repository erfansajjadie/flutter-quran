import 'package:quran/quran.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final quran = QuranBase(language: "en");

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () async {
      var res = await quran.gerVerseByChapter(1);
      print(res);
      expect(quran.language, "en");
    });

  });
}
