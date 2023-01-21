class WebtoonDetailModel {
  final String id, title, age, genre, about;

  WebtoonDetailModel.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        age = json['age'],
        genre = json['genre'],
        about = json['about'];
}
