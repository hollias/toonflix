import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/model/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodayToons() async {
    List<WebtoonModel> webtoonInstances = [];
    Uri url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      for (var webtoon in data) {
        webtoonInstances.add(WebtoonModel.fromjson(webtoon));
      }
      return webtoonInstances;
    }

    throw Error();
  }
}
