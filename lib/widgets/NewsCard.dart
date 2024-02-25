import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/views/newsView.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => NewsView(
                newsURL: articleModel.newsURL ?? 'http://flutter.dev',
              ),
            ),
          );
        },
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: articleModel.image ?? 'images/loading.jpg',
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                  errorWidget: (context, url, error) => const SizedBox(
                    height: 130,
                    child: Icon(
                      Icons.error,
                      color: Colors.orange,
                      size: 33,
                    ),
                  ),
                )

                // FadeInImage.assetNetwork(
                //   placeholder: 'images/loading.jpg',
                //   image: articleModel.image ??
                //       'https://source.unsplash.com/random/3840x2160',
                // ),

                ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 5, right: 5),
              child: Text(
                articleModel.title ?? 'UnTITLED',
                style: const TextStyle(fontSize: 16),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 20, left: 5, right: 5),
              child: Text(
                articleModel.subtitle ?? 'NOSUBTITLE',
                style: const TextStyle(fontSize: 13, color: Colors.grey),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
