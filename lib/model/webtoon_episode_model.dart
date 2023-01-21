class WebtoonEpisodeModel {
  final String id, title, rating, date;

  WebtoonEpisodeModel.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        rating = json['rating'],
        date = json['date'];
}
