abstract class MDPaths {
  static const manga = '/manga';
  static const chapter = '/chapter';
  static const author = '/author';
  static const server = '/at-home/server';
  static const cover = '/covers';
}

abstract class MDQueries {
  static Map<String, dynamic> manga(String manga) => {'manga': manga};
  static Map<String, dynamic> offset(int page) => {'offset': page.toString()};
  static Map<String, dynamic> limit(int limit) => {'limit': limit.toString()};
  static Map<String, List<dynamic>> includes(List<String> includes) =>
      {'includes[]': includes};
  static Map<String, List<dynamic>> contentRating(List<String> ratings) =>
      {'contentRating[]': ratings};
  static Map<String, List<dynamic>> originalLanguage(List<String> language) =>
      {'originalLanguage[]': language};
  static Map<String, List<dynamic>> translatedLanguage(List<String> language) =>
      {'translatedLanguage[]': language};
  static Map<String, List<dynamic>> ids(List<dynamic> ids) => {'ids[]': ids};

  static Map<String, dynamic> order(String option, String order) =>
      {'order[$option]': order};
}

abstract class MDConstantQuery {
  static const limit = 35;
  static const latestChapterlimit = 100;
  static const notIncludeFutureUpdates = {'includeFutureUpdates': '0'};
}

abstract class MDBase {
  static const uploads = 'uploads.mangadex.org';
  static const api = 'api.mangadex.org';
}
