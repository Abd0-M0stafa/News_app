import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';

import 'NewsCard.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({super.key, required this.articles});

  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsCard(
            articleModel: articles[index],
          );
        },
      ),
    );
  }
}
