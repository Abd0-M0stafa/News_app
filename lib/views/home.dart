import 'package:flutter/material.dart';

import 'package:news_app/widgets/newsListViewBuilder.dart';
import '../widgets/categoryListView.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: CategoryListView(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 25,
            ),
          ),
          const SliverToBoxAdapter(
            child: Center(
                child: Text(
              '- Hot Updates -',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 18,
            ),
          ),
          const NewsListViewBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
