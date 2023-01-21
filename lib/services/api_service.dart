import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/model/webtoon_detail_model.dart';
import 'package:toonflix/model/webtoon_episode_model.dart';
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

  Future<WebtoonDetailModel> getToonById(String id) async {
    Uri url = Uri.parse('$baseUrl/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map data = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(data);
    }
    throw Error();
  }

  Future<List<WebtoonEpisodeModel>> getLastestEpisodesById(String id) async {
    List<WebtoonEpisodeModel> episodesInstances = [];

    Uri url = Uri.parse('$baseUrl/$id/episode');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstances.add(episode);
      }

      return episodesInstances;
    }
    throw Error();
  }
}
