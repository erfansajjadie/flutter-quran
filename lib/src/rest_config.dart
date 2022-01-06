abstract class RestConfig {
  RestConfig._();

  static String baseUrl = "https://api.quran.com/api/v4";

  static String chaptersUrl = "$baseUrl/chapters";
  static String verseByChapter = "$baseUrl/verses/by_chapter/";

}