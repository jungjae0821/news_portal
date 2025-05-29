import 'package:flutter/material.dart';

import 'package:news_portal/presentation/news_list/widgets/app_bar.dart';
import 'package:news_portal/presentation/news_list/widgets/hot_topic.dart';
import 'package:news_portal/presentation/widgets/app_scaffold.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffod(
      appBar: NewsListAppBar(),
      child: Column(
        children: [
          HotTopic(), //
        ],
      ),
    );
  }
}