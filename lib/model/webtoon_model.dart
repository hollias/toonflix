class WebtoonModel {
  final String title, thumb, id;

  WebtoonModel.fromjson(Map json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
