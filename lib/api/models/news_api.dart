import 'dart:convert';

import 'package:easy_extension/easy_extension.dart';
import 'package:http/http.dart' as http;
import 'package:news_portal/api/api_config.dart';
import 'package:news_portal/api/models/news_data.dart';

class NewsApi {
  static Future<List<NewsData>?> getNews(String url) async {
    final result = await http
        .get(
          Uri.parse(ApiConfig.news.getTopic), //
        )
        .catchError((e) {
          Log.red('인기 뉴스 가져오기 오류: $e');
          return http.Response(e.toString(), 400);
        });
    if (result.statusCode != 200) return null;

    final body = result.body;
    final bodyJson = jsonDecode(body);
    final List<dynamic> newsRaw = bodyJson['news'];

    List<NewsData> newsList = [];

    for (var i = 0; i < newsRaw.length; i++) {
      final raw = newsRaw[i];
      final data = NewsData.fromMap(raw);
      newsList.add(data);
    }

    return newsRaw.map((data) => NewsData.fromMap(data)).toList();

    // [news] => List<dynamic>
    // 1. Return List<NewsData>
  }

  static Future<List<NewsData>?> getTopic() =>
      getNews(ApiConfig.news.getTopic);

  static Future<List<NewsData>?> getLastset() =>
      getNews(ApiConfig.news.getIssue);
}